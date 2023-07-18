import 'dart:async';

import 'package:flutter/material.dart';

class EventImages extends StatefulWidget {
  final List<String> images;
  final double height;
  final BorderRadius borderRadius;

  const EventImages({
    super.key,
    this.height = 180,
    required this.images,
    this.borderRadius = const BorderRadius.only(
      topLeft: Radius.circular(12),
      topRight: Radius.circular(12),
    ),
  });

  @override
  _EventImagesState createState() => _EventImagesState();
}

class _EventImagesState extends State<EventImages> {
  late PageController _pageController;
  late Timer _timer;
  int _current = 0;

  @override
  void initState() {
    _pageController = PageController();
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_pageController.hasClients) {
        if (_current == widget.images.length - 1) {
          _current = 0;
        } else {
          _current += 1;
        }
        _pageController.animateToPage(
          _current,
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeInOut,
        );
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: widget.borderRadius,
      child: SizedBox(
        height: widget.height,
        width: double.infinity,
        child: PageView.builder(
          controller: _pageController,
          itemCount: widget.images.length,
          reverse: false,
          itemBuilder: (context, index) {
            return Image.network(
              widget.images[index],
              fit: BoxFit.fitWidth,
            );
          },
        ),
      ),
    );
  }
}

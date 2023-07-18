import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../core/extensions/context_extension.dart';
import '../models/ngo_model.dart';
import '../widgets/ngo_summary_widget.dart';

class NGOMapScreen extends StatefulWidget {
  const NGOMapScreen({
    super.key,
    required this.ngos,
  });

  final List<NGOModel> ngos;

  @override
  State<NGOMapScreen> createState() => _NGOMapScreenState();
}

class _NGOMapScreenState extends State<NGOMapScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  NGOModel? currentNGO;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          mapType: MapType.hybrid,
          initialCameraPosition: CameraPosition(
            target: widget.ngos.first.address.latLng,
            zoom: 10,
          ),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          markers: widget.ngos
              .map((ngo) => Marker(
                    markerId: MarkerId(ngo.id),
                    position: LatLng(
                      ngo.address.latLng.latitude,
                      ngo.address.latLng.longitude,
                    ),
                    infoWindow: InfoWindow(
                      title: ngo.name,
                      snippet: ngo.address.address,
                    ),
                    onTap: () => goToNGO(ngo),
                  ))
              .toSet(),
          zoomControlsEnabled: false,
        ),
        if (currentNGO != null)
          Positioned(
            bottom: 150,
            child: SizedBox(
              width: context.screenWidth,
              child: NGOSummaryWidget(
                ngo: currentNGO!,
                isMapCard: true,
                close: () => setState(() => currentNGO = null),
              ),
            ),
          ),
      ],
    );
  }

  Future<void> goToNGO(NGOModel ngo) async {
    final GoogleMapController controller = await _controller.future;
    final CameraPosition position = CameraPosition(
      target: LatLng(
        ngo.address.latLng.latitude - 0.005,
        ngo.address.latLng.longitude,
      ),
      zoom: 15,
    );
    await controller.animateCamera(CameraUpdate.newCameraPosition(position));

    // show NGO card after 300ms

    setState(() {
      currentNGO = null;
    });

    Future.delayed(const Duration(milliseconds: 500)).then((value) {
      setState(() {
        currentNGO = ngo;
      });
    });
  }

  Future showNGO(NGOModel ngo) async {
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.1),
      builder: (context) {
        return SizedBox(
          height: context.screenHeight,
          width: context.screenWidth,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                NGOSummaryWidget(
                  ngo: ngo,
                  isMapCard: true,
                ),
                const SizedBox(height: 84),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Future<void> dispose() async {
    // final GoogleMapController controller = await _controller.future;
    // controller.dispose();
    super.dispose();
  }
}

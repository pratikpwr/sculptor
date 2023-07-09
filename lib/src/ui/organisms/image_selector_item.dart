import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sculptor/src/ui/themes/colors.dart';

import '../../core/extensions/context_extension.dart';
import '../atoms/padding.dart';
import '../molecules/glass_morphic_item.dart';

const _imageHeight = 120.0;

class ImageSelectorItem extends StatelessWidget {
  const ImageSelectorItem({
    super.key,
    required this.images,
    required this.onImageAdded,
    required this.onImageRemoved,
    this.label,
    this.maxImages,
  });

  final String? label;
  final List<File> images;
  final Function(File) onImageAdded;
  final Function(int) onImageRemoved;
  final int? maxImages;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Text(label!, style: context.textTheme.labelLarge),
          padding8,
        ],
        SizedBox(
          height: _imageHeight,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: images.length + 1,
            itemExtent: _imageHeight,
            itemBuilder: (context, index) {
              if (index == images.length) {
                if (maxImages != null && images.length == maxImages) {
                  return const SizedBox.shrink();
                }
                return GestureDetector(
                  onTap: () async => await pickImage(),
                  child: GlassMorphicItem(
                    blur: 8,
                    opacity: 0.3,
                    borderRadius: BorderRadius.circular(8),
                    enableBorder: true,
                    height: _imageHeight,
                    width: _imageHeight,
                    child: IconButton(
                      onPressed: pickImage,
                      icon: const Icon(
                        Icons.add_rounded,
                        size: 32,
                        color: AppColors.accentColor,
                      ),
                    ),
                  ),
                );
              }
              return Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    height: _imageHeight,
                    width: _imageHeight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: FileImage(images[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 2,
                    right: 10,
                    child: GestureDetector(
                      onTap: () => onImageRemoved(index),
                      child: const Icon(
                        Icons.close,
                        color: Colors.red,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        )
      ],
    );
  }

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      onImageAdded(imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }
}

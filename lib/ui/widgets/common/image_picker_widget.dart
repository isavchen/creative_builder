import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatelessWidget {
  final File? image;
  final String defaultImage;
  final Function(File) onImagePicked;

  const ImagePickerWidget({
    super.key,
    required this.image,
    required this.onImagePicked,
    required this.defaultImage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final pickedFile =
            await ImagePicker().pickImage(source: ImageSource.gallery);
        if (pickedFile != null) {
          onImagePicked(File(pickedFile.path));
        }
      },
      child: image != null
          ? Image.file(
              image!,
              fit: BoxFit.cover,
            )
          : Image.asset(
              defaultImage,
              fit: BoxFit.cover,
            ),
    );
  }
}

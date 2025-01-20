import 'dart:io';

import 'package:flutter/material.dart';

class ThreeReasonCreativeState extends ChangeNotifier {
  final TextEditingController titleController = TextEditingController(
    text: "🔥 3 Reasons to\nChoose our puffer".toUpperCase(),
  );

  final TextEditingController firstReasonController = TextEditingController(
    text: "Weatherproof warmth",
  );
  final TextEditingController secondReasonController = TextEditingController(
    text: "Lightweight comfort",
  );
  final TextEditingController thirdReasonController = TextEditingController(
    text: "Exceptionally stylish",
  );

  File? _image;

  File? get image => _image;

  void updateImagePath(File newImage) {
    _image = newImage;
    notifyListeners();
  }

  @override
  void dispose() {
    titleController.dispose();
    firstReasonController.dispose();
    secondReasonController.dispose();
    thirdReasonController.dispose();
    super.dispose();
  }
}

import 'dart:io';

import 'package:flutter/material.dart';

class ProblemsSolutionCreativeState extends ChangeNotifier {
  final TextEditingController solutionTitleController = TextEditingController(
    text: "SOLUTION",
  );

  final TextEditingController problemsTitleController = TextEditingController(
    text: "PROBLEMS",
  );

  final TextEditingController firstProblemController = TextEditingController(
    text: "Uneven texture",
  );

  final TextEditingController secondProblemController = TextEditingController(
    text: "Sensitive & irritated skin",
  );

  final TextEditingController thirdProblemController = TextEditingController(
    text: "Dehydration lines",
  );

  File? _image;

  File? get image => _image;

  void updateImagePath(File newImage) {
    _image = newImage;
    notifyListeners();
  }

  @override
  void dispose() {
    solutionTitleController.dispose();
    problemsTitleController.dispose();
    firstProblemController.dispose();
    secondProblemController.dispose();
    thirdProblemController.dispose();
    super.dispose();
  }
}

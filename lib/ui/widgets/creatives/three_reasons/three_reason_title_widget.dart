import 'package:creative_builder/ui/widgets/common/custom_text_field.dart';
import 'package:flutter/material.dart';

class ThreeReasonTitleWidget extends StatelessWidget {
  final double topOffset;
  final double scaleFactor;
  final TextEditingController textEditingController;
  const ThreeReasonTitleWidget({
    super.key,
    required this.topOffset,
    required this.scaleFactor,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topOffset,
      left: scaleFactor * 167.5,
      right: scaleFactor * 167.5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(scaleFactor * 30),
          color: Colors.black.withOpacity(0.8),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: scaleFactor * 30,
            vertical: scaleFactor * 20,
          ),
          child: CustomTextField(
            textEditingController: textEditingController,
            minLines: 1,
            maxLines: 2,
            maxLength: 33,
            fontSize: scaleFactor * 56,
            textColor: Colors.white,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

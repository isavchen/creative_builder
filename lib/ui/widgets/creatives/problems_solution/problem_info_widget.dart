import 'package:creative_builder/ui/widgets/common/custom_text_field.dart';
import 'package:flutter/material.dart';

class ProblemInfoWidget extends StatelessWidget {
  final double width;
  final double height;
  final String emoji;
  final double emojiSize;
  final double fontSize;
  final int maxLines;
  final int maxLength;
  final TextEditingController textEditingController;

  const ProblemInfoWidget({
    super.key,
    required this.width,
    required this.height,
    required this.emoji,
    required this.textEditingController,
    required this.fontSize,
    required this.maxLength,
    required this.emojiSize,
    this.maxLines = 2,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        children: [
          Text(
            emoji,
            style: TextStyle(
              fontSize: emojiSize,
            ),
          ),
          CustomTextField(
            textEditingController: textEditingController,
            minLines: 1,
            maxLines: maxLines,
            maxLength: maxLength,
            fontSize: fontSize,
            fontWeight: FontWeight.normal,
            textAlign: TextAlign.center,
            textColor: Colors.black,
          ),
        ],
      ),
    );
  }
}

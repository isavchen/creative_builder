import 'package:creative_builder/ui/widgets/common/custom_text_field.dart';
import 'package:flutter/material.dart';

class ProblemsSolutionTextWidget extends StatelessWidget {
  final double topOffset;
  final double horizontalMargin;
  final double minWidth;
  final double scaleFactor;
  final Color color;
  final double fontSize;
  final TextEditingController textEditingController;
  const ProblemsSolutionTextWidget({
    super.key,
    required this.topOffset,
    required this.horizontalMargin,
    required this.minWidth,
    required this.scaleFactor,
    required this.textEditingController,
    required this.color,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: topOffset,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: constraints.maxWidth - horizontalMargin,
              minWidth: minWidth,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: scaleFactor * 30,
                vertical: scaleFactor * 20,
              ),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(scaleFactor * 30),
              ),
              child: CustomTextField(
                textEditingController: textEditingController,
                minLines: 1,
                maxLines: 1,
                maxLength: 10,
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
                textColor: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}

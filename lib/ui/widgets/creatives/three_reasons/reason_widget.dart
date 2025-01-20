import 'package:creative_builder/ui/widgets/common/custom_text_field.dart';
import 'package:flutter/material.dart';

class ReasonWidget extends StatelessWidget {
  final double scaleFactor;
  final TextEditingController textEditingController;

  const ReasonWidget({
    super.key,
    required this.scaleFactor,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          constraints: BoxConstraints(minWidth: scaleFactor * 250),
          margin: EdgeInsets.only(
            top: scaleFactor * 28,
          ),
          padding: EdgeInsets.fromLTRB(
            scaleFactor * 36,
            scaleFactor * 28,
            scaleFactor * 36,
            scaleFactor * 24,
          ),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.7),
            border: Border.all(
              width: scaleFactor * 4,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(
              scaleFactor * 100,
            ),
          ),
          child: CustomTextField(
            textEditingController: textEditingController,
            minLines: 1,
            maxLines: 1,
            maxLength: 30,
            fontSize: scaleFactor * 40,
            textColor: Colors.black,
            textAlign: TextAlign.start,
            fontWeight: FontWeight.normal,
          ),
        ),
        Positioned(
          left: scaleFactor * -20,
          child: Container(
            width: scaleFactor * 60,
            height: scaleFactor * 60,
            decoration: BoxDecoration(
              color: const Color(0xFF06A555),
              borderRadius: BorderRadius.circular(
                scaleFactor * 60,
              ),
            ),
            child: Center(
              child: Icon(
                Icons.check,
                size: scaleFactor * 40,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}

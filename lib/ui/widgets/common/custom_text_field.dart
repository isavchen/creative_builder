import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final int minLines;
  final int maxLines;
  final int maxLength;
  final double fontSize;
  final Color textColor;
  final FontWeight? fontWeight;
  final TextAlign textAlign;
  final TextCapitalization textCapitalization;

  const CustomTextField({
    super.key,
    required this.textEditingController,
    required this.minLines,
    required this.maxLines,
    required this.maxLength,
    required this.fontSize,
    required this.textColor,
    this.fontWeight,
    this.textAlign = TextAlign.start,
    this.textCapitalization = TextCapitalization.none,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: TextField(
        controller: textEditingController,
        scrollPhysics: const NeverScrollableScrollPhysics(),
        minLines: minLines,
        maxLines: maxLines,
        maxLength: maxLength,
        enableInteractiveSelection: false,
        textInputAction: TextInputAction.done,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontFamily: 'ItalianPlateNo2',
          fontWeight: fontWeight,
        ),
        textAlign: textAlign,
        textAlignVertical: TextAlignVertical.center,
        textCapitalization: textCapitalization,
        decoration: const InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.zero,
          border: InputBorder.none,
          counterText: '',
        ),
      ),
    );
  }
}

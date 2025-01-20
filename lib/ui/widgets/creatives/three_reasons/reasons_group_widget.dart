import 'package:creative_builder/data/providers/three_reason_creative_state.dart';
import 'package:creative_builder/ui/widgets/creatives/three_reasons/reason_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReasonsGroupWidget extends StatelessWidget {
  final double scaleFactor;
  const ReasonsGroupWidget({
    super.key,
    required this.scaleFactor,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ThreeReasonCreativeState>(
      builder: (context, state, child) {
        final firstReasonController = state.firstReasonController;
        final secondReasonController = state.secondReasonController;
        final thirdReasonController = state.thirdReasonController;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReasonWidget(
              scaleFactor: scaleFactor,
              textEditingController: firstReasonController,
            ),
            SizedBox(
              height: scaleFactor * 10,
            ),
            ReasonWidget(
              scaleFactor: scaleFactor,
              textEditingController: secondReasonController,
            ),
            SizedBox(
              height: scaleFactor * 10,
            ),
            ReasonWidget(
              scaleFactor: scaleFactor,
              textEditingController: thirdReasonController,
            ),
          ],
        );
      },
    );
  }
}

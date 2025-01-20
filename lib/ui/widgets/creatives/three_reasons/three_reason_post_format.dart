import 'package:creative_builder/data/providers/three_reason_creative_state.dart';
import 'package:creative_builder/ui/widgets/common/image_picker_widget.dart';
import 'package:creative_builder/ui/widgets/creatives/three_reasons/reasons_group_widget.dart';
import 'package:creative_builder/ui/widgets/creatives/three_reasons/three_reason_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThreeReasonPostFormat extends StatelessWidget {
  final double scaleFactor;
  const ThreeReasonPostFormat({super.key, required this.scaleFactor});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThreeReasonCreativeState>(
      builder: (context, state, child) {
        final titleController = state.titleController;
        final image = state.image;

        return Stack(
          fit: StackFit.expand,
          children: [
            ImagePickerWidget(
              image: image,
              defaultImage: 'assets/images/winter_puffer.png',
              onImagePicked: (pickedImage) {
                state.updateImagePath(pickedImage);
              },
            ),
            ThreeReasonTitleWidget(
              topOffset: scaleFactor * 80,
              scaleFactor: scaleFactor,
              textEditingController: titleController,
            ),
            Positioned(
              left: scaleFactor * 60,
              bottom: scaleFactor * 100,
              child: ReasonsGroupWidget(
                scaleFactor: scaleFactor,
              ),
            )
          ],
        );
      },
    );
  }
}

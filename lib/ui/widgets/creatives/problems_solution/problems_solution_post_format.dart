import 'package:creative_builder/data/providers/problems_solution_creative_state.dart';
import 'package:creative_builder/ui/widgets/common/image_picker_widget.dart';
import 'package:creative_builder/ui/widgets/creatives/problems_solution/problems_solution_text_widget.dart';
import 'package:creative_builder/ui/widgets/creatives/problems_solution/problem_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProblemsSolutionPostFormat extends StatelessWidget {
  final double scaleFactor;
  const ProblemsSolutionPostFormat({super.key, required this.scaleFactor});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProblemsSolutionCreativeState>(
      builder: (context, state, child) {
        final problemsTitleController = state.problemsTitleController;
        final solutionTitleController = state.solutionTitleController;
        final firstProblemController = state.firstProblemController;
        final secondProblemController = state.secondProblemController;
        final thirdProblemController = state.thirdProblemController;
        final image = state.image;

        return Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFFFD0FC),
                ),
                child: Column(
                  children: [
                    ProblemsSolutionTextWidget(
                      topOffset: scaleFactor * 70,
                      horizontalMargin: scaleFactor * 100,
                      minWidth: scaleFactor * 150,
                      scaleFactor: scaleFactor,
                      color: const Color(0xFFC31832),
                      fontSize: scaleFactor * 60,
                      textEditingController: problemsTitleController,
                    ),
                    SizedBox(
                      height: scaleFactor * 53.54,
                    ),
                    Column(
                      children: [
                        ProblemInfoWidget(
                          width: scaleFactor * 312,
                          height: scaleFactor * 300,
                          emoji: '😤',
                          emojiSize: scaleFactor * 100,
                          textEditingController: firstProblemController,
                          fontSize: scaleFactor * 45,
                          maxLength: 20,
                        ),
                        SizedBox(
                          height: scaleFactor * 50,
                        ),
                        ProblemInfoWidget(
                          width: scaleFactor * 312,
                          height: scaleFactor * 300,
                          emoji: '🤬',
                          emojiSize: scaleFactor * 100,
                          textEditingController: secondProblemController,
                          fontSize: scaleFactor * 45,
                          maxLength: 27,
                        ),
                        SizedBox(
                          height: scaleFactor * 50,
                        ),
                        ProblemInfoWidget(
                          width: scaleFactor * 312,
                          height: scaleFactor * 300,
                          emoji: '😓',
                          emojiSize: scaleFactor * 100,
                          textEditingController: thirdProblemController,
                          fontSize: scaleFactor * 45,
                          maxLength: 27,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: scaleFactor * 10,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ImagePickerWidget(
                      image: image,
                      defaultImage: 'assets/images/problems_solution.png',
                      onImagePicked: (pickedImage) {
                        state.updateImagePath(pickedImage);
                      },
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: ProblemsSolutionTextWidget(
                        topOffset: scaleFactor * 70,
                        horizontalMargin: scaleFactor * 100,
                        minWidth: scaleFactor * 150,
                        scaleFactor: scaleFactor,
                        color: const Color(0xFF31852E),
                        fontSize: scaleFactor * 60,
                        textEditingController: solutionTitleController,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

import 'package:creative_builder/data/providers/problems_solution_creative_state.dart';
import 'package:creative_builder/ui/widgets/common/image_picker_widget.dart';
import 'package:creative_builder/ui/widgets/creatives/problems_solution/problems_solution_text_widget.dart';
import 'package:creative_builder/ui/widgets/creatives/problems_solution/problem_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProblemsSolutionStoryFormat extends StatelessWidget {
  final double scaleFactor;
  const ProblemsSolutionStoryFormat({super.key, required this.scaleFactor});

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

        return Column(
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
                      topOffset: scaleFactor * 220.46,
                      horizontalMargin: scaleFactor * 500,
                      minWidth: scaleFactor * 250,
                      scaleFactor: scaleFactor,
                      color: const Color(0xFFC31832),
                      fontSize: scaleFactor * 60,
                      textEditingController: problemsTitleController,
                    ),
                    SizedBox(
                      height: scaleFactor * 40.54,
                    ),
                    Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ProblemInfoWidget(
                              width: scaleFactor * 312,
                              height: scaleFactor * 270,
                              emoji: '😤',
                              emojiSize: scaleFactor * 100,
                              textEditingController: firstProblemController,
                              fontSize: scaleFactor * 42,
                              maxLength: 20,
                            ),
                            ProblemInfoWidget(
                              width: scaleFactor * 312,
                              height: scaleFactor * 270,
                              emoji: '🤬',
                              emojiSize: scaleFactor * 100,
                              textEditingController: secondProblemController,
                              fontSize: scaleFactor * 42,
                              maxLength: 27,
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: scaleFactor * 250,
                            ),
                            child: ProblemInfoWidget(
                              width: scaleFactor * 312,
                              height: scaleFactor * 270,
                              emoji: '😓',
                              emojiSize: scaleFactor * 100,
                              textEditingController: thirdProblemController,
                              fontSize: scaleFactor * 42,
                              maxLength: 27,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: scaleFactor * 10,
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
                        topOffset: scaleFactor * 65,
                        horizontalMargin: scaleFactor * 500,
                        minWidth: scaleFactor * 250,
                        scaleFactor: scaleFactor,
                        color: const Color(0xFF31852E),
                        fontSize: scaleFactor * 60,
                        textEditingController: solutionTitleController,
                      ),
                    )
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

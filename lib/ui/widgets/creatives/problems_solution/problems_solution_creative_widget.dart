import 'package:creative_builder/domain/creative.dart';
import 'package:creative_builder/data/providers/creative_format_state.dart';
import 'package:creative_builder/data/providers/problems_solution_creative_state.dart';
import 'package:creative_builder/ui/widgets/common/undefined_creative_format.dart';
import 'package:creative_builder/ui/widgets/creatives/problems_solution/problems_solution_ad_format.dart';
import 'package:creative_builder/ui/widgets/creatives/problems_solution/problems_solution_post_format.dart';
import 'package:creative_builder/ui/widgets/creatives/problems_solution/problems_solution_story_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ProblemsSolutionCreativeWidget extends StatelessWidget {
  const ProblemsSolutionCreativeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProblemsSolutionCreativeState(),
      child: Expanded(
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Consumer<CreativeFormatState>(
              builder: (context, formatState, child) {
                final currentFormat = formatState.currentFormat;

                return AspectRatio(
                  aspectRatio: currentFormat.aspectRatio,
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      final creativeWidgetWidth = constraints.maxWidth;
                      final creativeWidgetHeight = constraints.maxHeight;

                      final scaleWidth =
                          creativeWidgetWidth / currentFormat.width;
                      final scaleHeight =
                          creativeWidgetHeight / currentFormat.height;
                      final scaleFactor = (scaleWidth + scaleHeight) / 2;

                      return _CreativeFormatWidget(
                        currentFormat: currentFormat,
                        scaleFactor: scaleFactor,
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _CreativeFormatWidget extends StatelessWidget {
  final double scaleFactor;
  final CreativeFormat currentFormat;

  const _CreativeFormatWidget({
    required this.currentFormat,
    required this.scaleFactor,
  });

  @override
  Widget build(BuildContext context) {
    switch (currentFormat.type) {
      case CreativeFormatType.ad:
        return ProblemsSolutionAdFormat(
          scaleFactor: scaleFactor,
        );
      case CreativeFormatType.post:
        return ProblemsSolutionPostFormat(
          scaleFactor: scaleFactor,
        );
      case CreativeFormatType.story:
        return ProblemsSolutionStoryFormat(
          scaleFactor: scaleFactor,
        );
      default:
        return const UndefinedCreativeFormat();
    }
  }
}

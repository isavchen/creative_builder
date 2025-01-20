import 'package:creative_builder/domain/creative.dart';
import 'package:creative_builder/data/providers/creative_format_state.dart';
import 'package:creative_builder/ui/widgets/common/format_selector.dart';
import 'package:creative_builder/ui/widgets/creatives/problems_solution/problems_solution_creative_widget.dart';
import 'package:creative_builder/ui/widgets/creatives/three_reasons/three_reasons_creative_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class CreativeBuilderScreen extends StatelessWidget {
  final Creative creative;
  const CreativeBuilderScreen({required this.creative, super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CreativeFormatState(),
      child: Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: Column(
              children: [
                Builder(builder: (_) {
                  switch (creative.type) {
                    case CreativeType.threeReasons:
                      return const ThreeReasonCreativeWidget();
                    case CreativeType.problemsSolutions:
                      return const ProblemsSolutionCreativeWidget();
                    default:
                      return const SizedBox.shrink();
                  }
                }),
                SizedBox(
                  height: 16.h,
                ),
                FormatSelector(
                  creative: creative,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Color(0xFF5cf0a6),
                ),
              ),
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.w),
                child: const Text(
                  'Save',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

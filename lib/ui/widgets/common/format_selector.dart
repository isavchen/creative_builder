import 'package:creative_builder/domain/creative.dart';
import 'package:creative_builder/data/providers/creative_format_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class FormatSelector extends StatelessWidget {
  final Creative creative;
  const FormatSelector({super.key, required this.creative});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.r,
      child: Consumer<CreativeFormatState>(
        builder: (context, formatState, child) {
          return LayoutBuilder(
            builder: (context, constraints) {
              final totalItemsWidth = creative.formats.length * 90.r;
              final totalSpacing = (creative.formats.length - 1) * 16.w;
              final totalWidthRequired = totalItemsWidth + totalSpacing;

              final hasEnoughSpace = totalWidthRequired <= constraints.maxWidth;

              return hasEnoughSpace
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: creative.formats.map((format) {
                        final isFormatSelected =
                            format.type == formatState.currentFormat.type;

                        return _SelectorItem(
                          format: format,
                          isSelected: isFormatSelected,
                          onTap: () => formatState.setCreativeFormat(format),
                        );
                      }).toList(),
                    )
                  : ListView.separated(
                      itemCount: creative.formats.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final format = creative.formats[index];
                        final isFormatSelected =
                            format.type == formatState.currentFormat.type;

                        return _SelectorItem(
                          format: format,
                          isSelected: isFormatSelected,
                          onTap: () => formatState.setCreativeFormat(format),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(width: 16.w),
                    );
            },
          );
        },
      ),
    );
  }
}

class _SelectorItem extends StatelessWidget {
  final CreativeFormat format;
  final bool isSelected;
  final VoidCallback onTap;
  const _SelectorItem({
    required this.format,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 90.r,
        height: 90.r,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Colors.white : Colors.grey,
            width: isSelected ? 2.r : 1.r,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                format.type.toString().split('.').last,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                '${format.width.toInt()} x ${format.height.toInt()}',
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

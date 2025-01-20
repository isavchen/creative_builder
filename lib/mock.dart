import 'package:creative_builder/domain/creative.dart';

final List<Creative> mocksCreatives = [
  Creative(
    name: '3 Reasons',
    image: 'assets/images/winter_puffer_preview.png',
    type: CreativeType.threeReasons,
    rate: 7.2,
    formats: [
      CreativeFormat(
        type: CreativeFormatType.ad,
        width: 1080,
        height: 1080,
      ),
      CreativeFormat(
        type: CreativeFormatType.post,
        width: 1080,
        height: 1350,
      ),
      CreativeFormat(
        type: CreativeFormatType.story,
        width: 1080,
        height: 1920,
      ),
    ],
  ),
  Creative(
    name: 'Problems & Solutions',
    type: CreativeType.problemsSolutions,
    rate: 8.5,
    image: 'assets/images/problems_solution_preview.png',
    formats: [
      CreativeFormat(
        type: CreativeFormatType.ad,
        width: 1080,
        height: 1080,
      ),
      CreativeFormat(
        type: CreativeFormatType.post,
        width: 1080,
        height: 1350,
      ),
      CreativeFormat(
        type: CreativeFormatType.story,
        width: 1080,
        height: 1920,
      ),
    ],
  ),
];

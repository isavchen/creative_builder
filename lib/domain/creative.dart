enum CreativeType {
  threeReasons,
  problemsSolutions,
}

enum CreativeFormatType {
  ad,
  post,
  story,
}

class Creative {
  final String name;
  final String image;
  final double rate;
  final CreativeType type;
  final List<CreativeFormat> formats;

  Creative({
    required this.image,
    required this.rate,
    required this.name,
    required this.type,
    required this.formats,
  });
}

class CreativeFormat {
  final CreativeFormatType type;
  final double width;
  final double height;

  CreativeFormat({
    required this.type,
    required this.width,
    required this.height,
  });

  double get aspectRatio => width / height;
}

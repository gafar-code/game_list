import 'package:flutter_svg/flutter_svg.dart';
import 'package:game/utils/const.dart';

class Helper {
  
  static bool isEmpty(dynamic value) => ["[]", "null", ""].contains(value.toString());
  
  static Future<void> loadPrecacheIcons() async {
    List<String> icons = [
      searchIcon,
      closeIcon,
    ];

    for (String ic in icons) {
      await precachePicture(ExactAssetPicture(SvgPicture.svgStringDecoderBuilder, ic), null);
    }
  }
  
}

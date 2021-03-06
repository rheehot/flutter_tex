import 'dart:convert';

import 'package:flutter_tex/src/models/tex_view_widget_meta.dart';
import 'package:flutter_tex/src/style/style_utils.dart';
import 'package:flutter_tex/src/views/tex_view.dart';

class CoreUtils {
  static String getRawData(TeXView teXView) {
    return jsonEncode({
      'meta': TeXViewWidgetMeta(tag: 'div', type: 'tex-view', node: Node.Root)
          .toJson(),
      'id': null,
      'configurations': teXView.renderingEngine?.getConfigurations(),
      'fonts': teXView.fonts.map((font) => font.toJson()).toList(),
      'data': teXView.child.toJson(),
      'style': teXView.style?.initStyle() ?? teXViewDefaultStyle
    });
  }
}

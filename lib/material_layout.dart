library material_elements.layout;

import 'dart:html';
import 'package:web_components/interop.dart' show registerDartType;
import 'package:polymer/polymer.dart' show initMethod;
import 'package:core_elements/core_scaffold.dart';

class MaterialLayout extends CoreScaffold {
  MaterialLayout.created() : super.created();
  factory MaterialLayout() => new Element.tag('material-layout');
}
@initMethod
upgradePaperFab() => registerDartType('material-layout', MaterialLayout);
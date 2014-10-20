library material_elements.app;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:paper_elements/paper_dialog.dart';
import 'package:paper_elements/paper_toast.dart';
import 'color.dart';

@CustomTag('material-app')
class MaterialApp extends PolymerElement {  
  bool dark = false;
  @observable Color primaryColor;
  @observable Color accentColor;
  
  MaterialApp.created() : super.created() {
    primaryColor  = Color.indigo;
    accentColor   = Color.pink;
  }

  void showDialog(String title, String message) {
    PaperDialog dialog = $['simpleDialog'];
    dialog.heading = title;
    dialog.querySelector('p').text = message;
    dialog.opened = true;
  }

  void showMessage(String message) {
    PaperToast toast = $['toast'];
    toast.text = message;
    toast.show();
  }
}
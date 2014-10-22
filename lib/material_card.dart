library material_elements.card;

import 'dart:html';
import 'package:polymer/polymer.dart';

@CustomTag('material-card')
class MaterialCard extends PolymerElement {  
  @PublishedProperty(reflect: true) String title = "";
  @PublishedProperty(reflect: true) String subhead = "";
  
  MaterialCard.created() : super.created();
  
  void primaryAction(Event e) {
    print("inside primary action");
    $['shadow'].z = 5;
  }
}

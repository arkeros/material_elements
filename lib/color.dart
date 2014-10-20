library material_elements;

class Color {
  //http://docs.oracle.com/javase/8/docs/api/java/awt/Color.html#hashCode--
  final int r, g, b, a;
   
  //http://www.google.com/design/spec/style/color.html#color-ui-color-palette
  static final red        = new Color.fromInt(0xe51c23);
  static final pink       = new Color.fromInt(0xe91e63);
  static final purple     = new Color.fromInt(0x9c27b0);
  static final deepPurple = new Color.fromInt(0x673ab7);
  static final indigo     = new Color.fromInt(0x3f51b5);
  static final blue       = new Color.fromInt(0x5677fc);
  static final lightBlue  = new Color.fromInt(0x03a9f4);
  static final cyan       = new Color.fromInt(0x00bcd4);
  static final teal       = new Color.fromInt(0x009688);
  static final green      = new Color.fromInt(0x259b24);
  static final lightGreen = new Color.fromInt(0x8bc34a);
  static final lime       = new Color.fromInt(0xcddc39);
  static final yellow     = new Color.fromInt(0xffeb3b);
  static final amber      = new Color.fromInt(0xffc107);
  static final orange     = new Color.fromInt(0xff9800);
  static final deepOrange = new Color.fromInt(0xff5722);
  static final brown      = new Color.fromInt(0x795548);
  static final grey       = new Color.fromInt(0x9e9e9e);
  static final blueGrey   = new Color.fromInt(0x607d8b);
  static final white      = new Color.fromInt(0xffffff);
  static final black      = new Color.fromInt(0x000000);
   
  const Color(this.r, this.g, this.b, [this.a=255]);  
  Color.fromInt(int rgba, [bool hasAlpha=false]) : r = rgba & (255 << 16), g = rgba & (255 << 8), b = rgba & 255, a = hasAlpha ? rgba & (255 << 24) : 255;
  
  int get rgb {
    int rgb = r;
    rgb = (rgb << 8) + g;
    rgb = (rgb << 8) + b;
    return rgb;
  }
  
  int get rgba {
    int rgba = a;
    rgba = (rgba << 8) + r;
    rgba = (rgba << 8) + g;
    rgba = (rgba << 8) + b;
    return rgba;
  }
  
  Color brighter() {
  }
  
  Color darker() {
    
  }
  
  String toString() {
    if (a == 255) 
      return '#' + this.rgb.toRadixString(16);  
    else
      return "rgba($r, $g, $b, $a)";        
  }  
}
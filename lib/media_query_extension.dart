import 'package:flutter/cupertino.dart';

class MediaQueryExtension{
  static getAspectRatio(context){
    return MediaQuery.of(context).size.aspectRatio;
  }

  static getHeight(context){
    return MediaQuery.of(context).size.height;
  }

  static getWidth(context){
    return MediaQuery.of(context).size.width;
  }

  static getBrightNessLevel(context){
    return MediaQuery.of(context).platformBrightness;
  }

  static getOrientation(context){
    return MediaQuery.of(context).orientation;
  }
}
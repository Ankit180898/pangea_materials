import 'package:flutter/material.dart';

extension PaddingExtension on Widget {
  Widget padAll(double padding) {
    return Padding(padding: EdgeInsets.all(padding),
    
    child: this,);
  }
  Widget paddingLeft(double padding) {
    return Padding(padding: EdgeInsets.only(left: padding),
    
    child: this,);
  }
  Widget paddingRight(double padding) {
    return Padding(padding: EdgeInsets.only(right: padding),
    
    child: this,);
  }
  Widget paddingTop(double padding) {
    return Padding(padding: EdgeInsets.only(top: padding),
    
    child: this,);
  }
  Widget paddingBottom(double padding) {
    return Padding(padding: EdgeInsets.only(bottom: padding),
    
    child: this,);
  }
  Widget symmetricHorizontal(double padding) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: padding),
    
    child: this,);
  }
  Widget symmetricVertical(double padding) {
    return Padding(padding: EdgeInsets.symmetric(vertical: padding),
    
    child: this,);
  }

}
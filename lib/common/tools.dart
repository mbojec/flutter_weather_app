import 'package:flutter/foundation.dart';

class Tools {
  static bool isCityNameValid({@required String value}){
    // Option for polish signs
    // final RegExp _alpha = RegExp(r'^[a-zA-Z-żźćńółęąśŻŹĆĄŚĘŁÓŃ ]+$');
    final RegExp _alpha = RegExp(r'^[a-zA-Z ]+$');
    return _alpha.hasMatch(value);
  }
}
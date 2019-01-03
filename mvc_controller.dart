import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ControllerMVC {
  StateMVC _state;

  @virtual
  void initState() {}
  @virtual
  void dispose() { }

  void setState(VoidCallback state) {
    _state._setStateMVC(state);
  }

  void _setStateMVC(StateMVC state) => _state = state; 
}

abstract class StateMVC<T extends StatefulWidget, C extends ControllerMVC> extends State<T>{
  C controller;

  StateMVC([this.controller]) : super() {
    controller?._setStateMVC(this);
  }

  @override
  void initState() {
    controller?.initState();
    super.initState();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void _setStateMVC(VoidCallback state) {
    setState(state);
  }
}

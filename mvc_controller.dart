import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ControllerMVC {
  @virtual
  void initState() {}
  @virtual
  void dispose() { }
}

class StateControllerMVC extends ControllerMVC {
  StateMVC _state;

  void setState(VoidCallback state) {
    _state._setStateMVC(state);
  }

  void _setStateMVC(StateMVC state) => _state = state; 
}

abstract class StatelessMVC<C extends ControllerMVC> extends StatelessWidget {
  final C controller;

  StatelessMVC(this.controller) : super();
}

abstract class StateMVC<T extends StatefulWidget, C extends StateControllerMVC> extends State<T>{
  final C controller;

  StateMVC(this.controller) : super() {
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppState on _AppState, Store {
  final _$initializedAtom = Atom(name: '_AppState.initialized');

  @override
  bool get initialized {
    _$initializedAtom.reportRead();
    return super.initialized;
  }

  @override
  set initialized(bool value) {
    _$initializedAtom.reportWrite(value, super.initialized, () {
      super.initialized = value;
    });
  }

  final _$optionAtom = Atom(name: '_AppState.option');

  @override
  String get option {
    _$optionAtom.reportRead();
    return super.option;
  }

  @override
  set option(String value) {
    _$optionAtom.reportWrite(value, super.option, () {
      super.option = value;
    });
  }

  final _$cobraChickenRevealTapsAtom =
      Atom(name: '_AppState.cobraChickenRevealTaps');

  @override
  int get cobraChickenRevealTaps {
    _$cobraChickenRevealTapsAtom.reportRead();
    return super.cobraChickenRevealTaps;
  }

  @override
  set cobraChickenRevealTaps(int value) {
    _$cobraChickenRevealTapsAtom
        .reportWrite(value, super.cobraChickenRevealTaps, () {
      super.cobraChickenRevealTaps = value;
    });
  }

  final _$optionsAtom = Atom(name: '_AppState.options');

  @override
  ObservableList<String> get options {
    _$optionsAtom.reportRead();
    return super.options;
  }

  @override
  set options(ObservableList<String> value) {
    _$optionsAtom.reportWrite(value, super.options, () {
      super.options = value;
    });
  }

  final _$_AppStateActionController = ActionController(name: '_AppState');

  @override
  void setOption(String newOption) {
    final _$actionInfo =
        _$_AppStateActionController.startAction(name: '_AppState.setOption');
    try {
      return super.setOption(newOption);
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setInitialized() {
    final _$actionInfo = _$_AppStateActionController.startAction(
        name: '_AppState.setInitialized');
    try {
      return super.setInitialized();
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementCobraChickenRevealTaps() {
    final _$actionInfo = _$_AppStateActionController.startAction(
        name: '_AppState.incrementCobraChickenRevealTaps');
    try {
      return super.incrementCobraChickenRevealTaps();
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addCobraChicken() {
    final _$actionInfo = _$_AppStateActionController.startAction(
        name: '_AppState.addCobraChicken');
    try {
      return super.addCobraChicken();
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reset() {
    final _$actionInfo =
        _$_AppStateActionController.startAction(name: '_AppState.reset');
    try {
      return super.reset();
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
initialized: ${initialized},
option: ${option},
cobraChickenRevealTaps: ${cobraChickenRevealTaps},
options: ${options}
    ''';
  }
}

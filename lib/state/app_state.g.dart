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

  final _$favoritesAtom = Atom(name: '_AppState.favorites');

  @override
  ObservableList<String> get favorites {
    _$favoritesAtom.reportRead();
    return super.favorites;
  }

  @override
  set favorites(ObservableList<String> value) {
    _$favoritesAtom.reportWrite(value, super.favorites, () {
      super.favorites = value;
    });
  }

  final _$_AppStateActionController = ActionController(name: '_AppState');

  @override
  void setOption(String option) {
    final _$actionInfo =
        _$_AppStateActionController.startAction(name: '_AppState.setOption');
    try {
      return super.setOption(option);
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
  void addFavorite(String url) {
    final _$actionInfo =
        _$_AppStateActionController.startAction(name: '_AppState.addFavorite');
    try {
      return super.addFavorite(url);
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearFavorites() {
    final _$actionInfo = _$_AppStateActionController.startAction(
        name: '_AppState.clearFavorites');
    try {
      return super.clearFavorites();
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeFavorite(String url) {
    final _$actionInfo = _$_AppStateActionController.startAction(
        name: '_AppState.removeFavorite');
    try {
      return super.removeFavorite(url);
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
initialized: ${initialized},
option: ${option},
options: ${options},
favorites: ${favorites}
    ''';
  }
}

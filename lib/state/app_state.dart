import 'package:mobx/mobx.dart';

part 'app_state.g.dart';

class AppState = _AppState with _$AppState;

abstract class _AppState with Store {
  static final kSlytherin = "Slytherin";
  static final kGryffindor = "Gryffindor";
  static final kWhatTheDuck = "What the duck?";
  static final kCobraChicken = "Cobra Chicken";

  @observable
  bool initialized = false;

  @observable
  String option;

  @observable
  ObservableList<String> options =
      ObservableList.of([kSlytherin, kGryffindor, kWhatTheDuck]);

  @observable
  ObservableList<String> favorites = ObservableList();

  @action
  void setOption(String option) {
    option = option;
  }

  @action
  void setInitialized() {
    initialized = true;
  }

  @action
  void addCobraChicken() {
    options.add(kCobraChicken);
  }

  @action
  void addFavorite(String url) {
    favorites.add(url);
  }

  @action
  void clearFavorites() {
    favorites.clear();
  }

  @action
  void removeFavorite(String url) {
    favorites.remove(url);
  }
}

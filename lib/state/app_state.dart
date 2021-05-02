import 'package:mobx/mobx.dart';

part 'app_state.g.dart';

class AppState = _AppState with _$AppState;

abstract class _AppState with Store {
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
  void setOption(String newOption) {
    option = newOption;
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

final kSlytherin = "Slytherin";
final kGryffindor = "Gryffindor";
final kWhatTheDuck = "What the duck?";
final kCobraChicken = "Cobra Chicken";

final optionToImageMap = {
  kSlytherin: 'slytherin.jpg',
  kGryffindor: 'gryffindor.jpg',
  kWhatTheDuck: 'duck.jpg',
  kCobraChicken: 'cobrachicken.jpg'
};

import 'package:mobx/mobx.dart';

part 'app_state.g.dart';

class AppState = _AppState with _$AppState;

abstract class _AppState with Store {
  @observable
  bool initialized = false;

  @observable
  String option;

  @observable
  int cobraChickenRevealTaps = 0;

  @observable
  ObservableList<String> options =
      ObservableList.of([kSlytherin, kGryffindor, kWhatTheDuck]);

  @action
  void setOption(String newOption) {
    option = newOption;
  }

  @action
  void setInitialized() {
    initialized = true;
  }

  @action
  void incrementCobraChickenRevealTaps() {
    if (cobraChickenRevealTaps <= 10) cobraChickenRevealTaps++;
    if (cobraChickenRevealTaps == 10) addCobraChicken();
  }

  @action
  void addCobraChicken() {
    options.add(kCobraChicken);
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

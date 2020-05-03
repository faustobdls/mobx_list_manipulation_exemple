
import 'package:mobx/mobx.dart';

import 'dropdown/dropdown.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  int value = 0;

  @observable
  List<DropdownContainer> listContainer = [];

  @action
  Future<void> increment() async {
    if (listContainer == null) listContainer = [];
    List<DropdownContainer> newlist = listContainer;
    newlist.add(DropdownContainer(title: "$value",pos: value,));
    await Future.delayed(Duration(seconds: 1));
    listContainer = null;
    listContainer = newlist;
    value++;
  }

  @action
  Future<void> seValue(int newValue) async {
    if (listContainer == null) listContainer = [];
    List<DropdownContainer> newlist = listContainer;
    listContainer = null;
    listContainer = newlist.where((e) => e.pos < newValue).toList();
    await Future.delayed(Duration(seconds: 1));

    value = (newValue - 1 < 0) ? 0 : newValue - 1;
  }
}

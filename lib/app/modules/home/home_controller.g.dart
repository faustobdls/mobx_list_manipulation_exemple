// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$valueAtom = Atom(name: '_HomeControllerBase.value');

  @override
  int get value {
    _$valueAtom.context.enforceReadPolicy(_$valueAtom);
    _$valueAtom.reportObserved();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.context.conditionallyRunInAction(() {
      super.value = value;
      _$valueAtom.reportChanged();
    }, _$valueAtom, name: '${_$valueAtom.name}_set');
  }

  final _$listContainerAtom = Atom(name: '_HomeControllerBase.listContainer');

  @override
  List<DropdownContainer> get listContainer {
    _$listContainerAtom.context.enforceReadPolicy(_$listContainerAtom);
    _$listContainerAtom.reportObserved();
    return super.listContainer;
  }

  @override
  set listContainer(List<DropdownContainer> value) {
    _$listContainerAtom.context.conditionallyRunInAction(() {
      super.listContainer = value;
      _$listContainerAtom.reportChanged();
    }, _$listContainerAtom, name: '${_$listContainerAtom.name}_set');
  }

  final _$incrementAsyncAction = AsyncAction('increment');

  @override
  Future<void> increment() {
    return _$incrementAsyncAction.run(() => super.increment());
  }

  final _$seValueAsyncAction = AsyncAction('seValue');

  @override
  Future<void> seValue(int newValue) {
    return _$seValueAsyncAction.run(() => super.seValue(newValue));
  }

  @override
  String toString() {
    final string =
        'value: ${value.toString()},listContainer: ${listContainer.toString()}';
    return '{$string}';
  }
}

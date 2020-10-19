// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_tela_inicial.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StateTelaInicial on _StateTelaInicialBase, Store {
  final _$selectedIndexAtom = Atom(name: '_StateTelaInicialBase.selectedIndex');

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  final _$_StateTelaInicialBaseActionController =
      ActionController(name: '_StateTelaInicialBase');

  @override
  void onItemTapped(int value) {
    final _$actionInfo = _$_StateTelaInicialBaseActionController.startAction(
        name: '_StateTelaInicialBase.onItemTapped');
    try {
      return super.onItemTapped(value);
    } finally {
      _$_StateTelaInicialBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedIndex: ${selectedIndex}
    ''';
  }
}

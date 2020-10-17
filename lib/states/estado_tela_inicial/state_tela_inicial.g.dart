// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_tela_inicial.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StateTelaIncial on _StateTelaIncialBase, Store {
  final _$selectedIndexAtom = Atom(name: '_StateTelaIncialBase.selectedIndex');

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

  final _$_StateTelaIncialBaseActionController =
      ActionController(name: '_StateTelaIncialBase');

  @override
  void changedIndex(int value) {
    final _$actionInfo = _$_StateTelaIncialBaseActionController.startAction(
        name: '_StateTelaIncialBase.changedIndex');
    try {
      return super.changedIndex(value);
    } finally {
      _$_StateTelaIncialBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedIndex: ${selectedIndex}
    ''';
  }
}

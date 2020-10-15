// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_login.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StateLogin on _StateLoginBase, Store {
  final _$loadingAtom = Atom(name: '_StateLoginBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$esconderSenhaAtom = Atom(name: '_StateLoginBase.esconderSenha');

  @override
  bool get esconderSenha {
    _$esconderSenhaAtom.reportRead();
    return super.esconderSenha;
  }

  @override
  set esconderSenha(bool value) {
    _$esconderSenhaAtom.reportWrite(value, super.esconderSenha, () {
      super.esconderSenha = value;
    });
  }

  final _$loginClienteAsyncAction = AsyncAction('_StateLoginBase.loginCliente');

  @override
  Future<void> loginCliente() {
    return _$loginClienteAsyncAction.run(() => super.loginCliente());
  }

  final _$_StateLoginBaseActionController =
      ActionController(name: '_StateLoginBase');

  @override
  void btnMudarSenha() {
    final _$actionInfo = _$_StateLoginBaseActionController.startAction(
        name: '_StateLoginBase.btnMudarSenha');
    try {
      return super.btnMudarSenha();
    } finally {
      _$_StateLoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String validarCampos(String text) {
    final _$actionInfo = _$_StateLoginBaseActionController.startAction(
        name: '_StateLoginBase.validarCampos');
    try {
      return super.validarCampos(text);
    } finally {
      _$_StateLoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
esconderSenha: ${esconderSenha}
    ''';
  }
}

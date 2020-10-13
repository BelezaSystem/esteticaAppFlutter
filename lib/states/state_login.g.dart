// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_login.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StateLogin on _StateLoginBase, Store {
  Computed<bool> _$seEmailValidoComputed;

  @override
  bool get seEmailValido =>
      (_$seEmailValidoComputed ??= Computed<bool>(() => super.seEmailValido,
              name: '_StateLoginBase.seEmailValido'))
          .value;
  Computed<bool> _$seSenhaValidoComputed;

  @override
  bool get seSenhaValido =>
      (_$seSenhaValidoComputed ??= Computed<bool>(() => super.seSenhaValido,
              name: '_StateLoginBase.seSenhaValido'))
          .value;
  Computed<bool> _$seFormValidoComputed;

  @override
  bool get seFormValido =>
      (_$seFormValidoComputed ??= Computed<bool>(() => super.seFormValido,
              name: '_StateLoginBase.seFormValido'))
          .value;

  final _$emailAtom = Atom(name: '_StateLoginBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$senhaAtom = Atom(name: '_StateLoginBase.senha');

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
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

  final _$loginAsyncAction = AsyncAction('_StateLoginBase.login');

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  final _$_StateLoginBaseActionController =
      ActionController(name: '_StateLoginBase');

  @override
  void setEmail(String newEmail) {
    final _$actionInfo = _$_StateLoginBaseActionController.startAction(
        name: '_StateLoginBase.setEmail');
    try {
      return super.setEmail(newEmail);
    } finally {
      _$_StateLoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String newSenha) {
    final _$actionInfo = _$_StateLoginBaseActionController.startAction(
        name: '_StateLoginBase.setSenha');
    try {
      return super.setSenha(newSenha);
    } finally {
      _$_StateLoginBaseActionController.endAction(_$actionInfo);
    }
  }

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
  String toString() {
    return '''
email: ${email},
senha: ${senha},
esconderSenha: ${esconderSenha},
loading: ${loading},
seEmailValido: ${seEmailValido},
seSenhaValido: ${seSenhaValido},
seFormValido: ${seFormValido}
    ''';
  }
}

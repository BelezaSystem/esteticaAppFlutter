// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_cadastro.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StateCadastro on _StateCadastroBase, Store {
  Computed<bool> _$seEmailValidaComputed;

  @override
  bool get seEmailValida =>
      (_$seEmailValidaComputed ??= Computed<bool>(() => super.seEmailValida,
              name: '_StateCadastroBase.seEmailValida'))
          .value;
  Computed<bool> _$seNumeroValidaComputed;

  @override
  bool get seNumeroValida =>
      (_$seNumeroValidaComputed ??= Computed<bool>(() => super.seNumeroValida,
              name: '_StateCadastroBase.seNumeroValida'))
          .value;
  Computed<bool> _$seSenhaValidaComputed;

  @override
  bool get seSenhaValida =>
      (_$seSenhaValidaComputed ??= Computed<bool>(() => super.seSenhaValida,
              name: '_StateCadastroBase.seSenhaValida'))
          .value;
  Computed<bool> _$seReSenhaValidaComputed;

  @override
  bool get seReSenhaValida =>
      (_$seReSenhaValidaComputed ??= Computed<bool>(() => super.seReSenhaValida,
              name: '_StateCadastroBase.seReSenhaValida'))
          .value;
  Computed<bool> _$seCamposValidosComputed;

  @override
  bool get seCamposValidos =>
      (_$seCamposValidosComputed ??= Computed<bool>(() => super.seCamposValidos,
              name: '_StateCadastroBase.seCamposValidos'))
          .value;

  final _$nomeAtom = Atom(name: '_StateCadastroBase.nome');

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  final _$emailAtom = Atom(name: '_StateCadastroBase.email');

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

  final _$senhaAtom = Atom(name: '_StateCadastroBase.senha');

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

  final _$reSenhaAtom = Atom(name: '_StateCadastroBase.reSenha');

  @override
  String get reSenha {
    _$reSenhaAtom.reportRead();
    return super.reSenha;
  }

  @override
  set reSenha(String value) {
    _$reSenhaAtom.reportWrite(value, super.reSenha, () {
      super.reSenha = value;
    });
  }

  final _$numeroAtom = Atom(name: '_StateCadastroBase.numero');

  @override
  String get numero {
    _$numeroAtom.reportRead();
    return super.numero;
  }

  @override
  set numero(String value) {
    _$numeroAtom.reportWrite(value, super.numero, () {
      super.numero = value;
    });
  }

  final _$loadingAtom = Atom(name: '_StateCadastroBase.loading');

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

  final _$loginAsyncAction = AsyncAction('_StateCadastroBase.login');

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  final _$_StateCadastroBaseActionController =
      ActionController(name: '_StateCadastroBase');

  @override
  void setNome(String value) {
    final _$actionInfo = _$_StateCadastroBaseActionController.startAction(
        name: '_StateCadastroBase.setNome');
    try {
      return super.setNome(value);
    } finally {
      _$_StateCadastroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_StateCadastroBaseActionController.startAction(
        name: '_StateCadastroBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_StateCadastroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String value) {
    final _$actionInfo = _$_StateCadastroBaseActionController.startAction(
        name: '_StateCadastroBase.setSenha');
    try {
      return super.setSenha(value);
    } finally {
      _$_StateCadastroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setReSenha(String value) {
    final _$actionInfo = _$_StateCadastroBaseActionController.startAction(
        name: '_StateCadastroBase.setReSenha');
    try {
      return super.setReSenha(value);
    } finally {
      _$_StateCadastroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNumero(String value) {
    final _$actionInfo = _$_StateCadastroBaseActionController.startAction(
        name: '_StateCadastroBase.setNumero');
    try {
      return super.setNumero(value);
    } finally {
      _$_StateCadastroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
email: ${email},
senha: ${senha},
reSenha: ${reSenha},
numero: ${numero},
loading: ${loading},
seEmailValida: ${seEmailValida},
seNumeroValida: ${seNumeroValida},
seSenhaValida: ${seSenhaValida},
seReSenhaValida: ${seReSenhaValida},
seCamposValidos: ${seCamposValidos}
    ''';
  }
}

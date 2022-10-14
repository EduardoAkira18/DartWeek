import 'package:flutter/material.dart';
import 'package:fwc_album_app_dartweek/app/core/ui/helpers/loader.dart';
import 'package:fwc_album_app_dartweek/app/core/ui/helpers/messages.dart';
import 'package:fwc_album_app_dartweek/app/pages/auth/register/register_page.dart';

import './register_view.dart';

abstract class RegisterViewImpl extends State<RegisterPage>
    with Messages<RegisterPage>, Loader<RegisterPage>
    implements RegisterView {
  @override
  void initState() {
    widget.presenter.view = this;
    super.initState();
  }

  @override
  void registerError([String? message]) {
    hideLoader();
    showError(message ?? 'Erro ao registrar');
  }

  @override
  void registerSuccess() {
    hideLoader();
    showSucess('Usuário cadastrado com sucesso');
    Navigator.of(context).pop();
  }
}

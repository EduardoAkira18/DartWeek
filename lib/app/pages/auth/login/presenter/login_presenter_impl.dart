import 'dart:developer';

import 'package:fwc_album_app_dartweek/app/core/exceptions/unauthorized_exception.dart';
import 'package:fwc_album_app_dartweek/app/pages/auth/login/view/login_view.dart';
import 'package:fwc_album_app_dartweek/app/services/login/login_service.dart';

import './login_presenter.dart';

class LoginPresenterImpl implements LoginPresenter {
  final LoginService loginService;
  late final LoginView _view;

  LoginPresenterImpl({
    required this.loginService,
  });

  @override
  Future<void> login(String email, String password) async {
    try {
      await loginService.execute(email: email, password: password);
      _view.success();
    } on UnauthorizedException catch(e,s){
       log('Erro ao realizar o login', error: e, stackTrace: s);
      _view.error('Usuário ou senha inválidos');
    } catch (e, s) {
      log('Erro ao realizar o login', error: e, stackTrace: s);
      _view.error('Erro ao realizar login');
    }
  }

  @override
  set view(LoginView view) => _view = view;
}

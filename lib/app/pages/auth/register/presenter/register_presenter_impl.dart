import 'dart:developer';

import 'package:fwc_album_app_dartweek/app/models/register_user_model.dart';
import 'package:fwc_album_app_dartweek/app/pages/auth/register/presenter/register_presenter.dart';
import 'package:fwc_album_app_dartweek/app/pages/auth/register/view/register_view.dart';
import 'package:fwc_album_app_dartweek/app/repository/auth/auth_repository.dart';

class RegisterPresenterImpl extends RegisterPresenter {
  late final RegisterView _view;
  final AuthRepository authRepository;

  RegisterPresenterImpl({required this.authRepository});

  @override
  Future<void> register(
      {required String name,
      required String email,
      required String password,
      required String confirmPassword}) async {
    final registerUserModel = RegisterUserModel(
      name: name,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
    );
    try {
      await authRepository.register(registerUserModel);
      _view.registerSuccess();
    } catch (e, s) {
      log('Erro ao cadastrar o usuário', error: e, stackTrace: s);
      _view.registerError();
    }
  }

  @override
  set view(RegisterView view) => _view = view;
}

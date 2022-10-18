import 'package:fwc_album_app_dartweek/app/models/user_model.dart';

abstract class HomeView {
  void uptadeUser(UserModel user);
  void error(String message);
  void showLoader();
  void logoutSuccess();
}

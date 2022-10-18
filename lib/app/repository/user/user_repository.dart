import 'package:fwc_album_app_dartweek/app/models/user_model.dart';

abstract class UserRepository {
  Future<UserModel> getMe();
}

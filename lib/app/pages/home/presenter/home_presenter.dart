import 'package:fwc_album_app_dartweek/app/core/mvp/fwc_presenter.dart';
import 'package:fwc_album_app_dartweek/app/pages/home/view/home_view.dart';

abstract class HomePresenter extends FwcPresenter<HomeView> {
  late HomeView _view;

  Future<void> getUserData();
  Future<void> logout();

  @override
  set view(HomeView view) => _view = view;
}

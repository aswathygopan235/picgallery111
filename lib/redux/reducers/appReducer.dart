import 'package:picture_gallery/redux/app_states/appState.dart';

AppState appReducer(AppState prevState, dynamic action) {
  AppState newState = AppState(
    numberFavouritedPics: prevState.numberFavouritedPics,
  );
  return newState;
}

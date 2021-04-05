import 'package:picture_gallery/redux/app_states/AppState.dart';
import 'package:redux/redux.dart';
import 'package:picture_gallery/redux/actions/ImageFetchActions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/material.dart';

final Reducer<dynamic> imageFetchReducer = combineReducers([
  TypedReducer<dynamic, ImageFetchSuccess>(_imageFetchSuccess),
  TypedReducer<dynamic, ImageFetchFail>(_imageFetchFail),
  TypedReducer<dynamic, ImageFetchLoading>(_imageFetchLoading),
]);

dynamic _imageFetchSuccess(dynamic state, ImageFetchSuccess action) {
  return action.images;
}

dynamic _imageFetchFail(dynamic state, ImageFetchFail action) {
  return Text('Error loading Images');
}

dynamic _imageFetchLoading(dynamic state, ImageFetchLoading action) {
  return CircularProgressIndicator();
}

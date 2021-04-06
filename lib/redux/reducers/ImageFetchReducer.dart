import 'package:picture_gallery/redux/app_states/AppState.dart';
import 'package:picture_gallery/services/PicsumImage.dart';
import 'package:redux/redux.dart';
import 'package:picture_gallery/redux/actions/ImageFetchActions.dart';
import 'package:picture_gallery/models/ImageModelData.dart';
import 'package:picture_gallery/models/ImageModel.dart';
import 'package:flutter/material.dart';

final Reducer<dynamic> imageFetchReducer = combineReducers([
  TypedReducer<dynamic, ImageFetchSuccess>(_imageFetchSuccess),
  TypedReducer<dynamic, ImageFetchFail>(_imageFetchFail),
  TypedReducer<dynamic, ImageFetchLoading>(_imageFetchLoading),
]);

dynamic _imageFetchSuccess(dynamic state, ImageFetchSuccess action) {
  return action;
}

dynamic _imageFetchFail(dynamic state, ImageFetchFail action) {
  return Text('Error loading Images');
}

dynamic _imageFetchLoading(dynamic state, ImageFetchLoading action) async {
  // return CircularProgressIndicator();
  print('_imageFetchLoading working');
  print(action);
  for (int i = 0; i < 10; i++) {
    PicsumImage picsumImageObj = PicsumImage();
    dynamic myImage = await picsumImageObj.getImageData(i);

    ImageModel oneImage = ImageModel(
        author: myImage['author'],
        width: myImage['width'],
        height: myImage['height'],
        downloadURL: myImage['download_url'],
        isFavourited: false,
        totalFavouritedNumber: 0);
    ImageModelData().addNewImage(oneImage);
    // print(ImageModelData().images);
  }

  return action.images;
}

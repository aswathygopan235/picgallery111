import 'package:picture_gallery/models/ImageModel.dart';

class ImageFetchSuccess {
  final List<ImageModel> images;
  ImageFetchSuccess(this.images);
}

class ImageFetchFail {}

class ImageFetchLoading {}

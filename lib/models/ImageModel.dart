//Image Model which stores information of individual images
class ImageModel {
  final String author;
  final int width;
  final int height;
  final String downloadURL;
  final String imageURL;
  bool isFavourited;
  final int totalFavouritedNumber;
  ImageModel(
      {this.author,
      this.width,
      this.height,
      this.downloadURL,
      this.imageURL,
      this.isFavourited,
      this.totalFavouritedNumber});

  void toggleImageLike() {
    isFavourited = !isFavourited;
  }
}

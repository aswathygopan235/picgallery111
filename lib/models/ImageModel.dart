//Image Model which stores information of individual images
class ImageModel {
  final String author;
  final int width;
  final int height;
  final String downloadURL;
  final String imageURL;
  final bool isFavourited;

  ImageModel(
      {this.author,
      this.width,
      this.height,
      this.downloadURL,
      this.imageURL,
      this.isFavourited});
}

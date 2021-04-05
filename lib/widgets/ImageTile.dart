import 'package:flutter/material.dart';
import 'package:picture_gallery/screens/ImageDetailsScreen.dart';

class ImageTile extends StatelessWidget {
  final String imageURL;
  final String imageTag;
  ImageTile({this.imageURL, this.imageTag});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          Navigator.pushNamed(
            context,
            ImageDetailsScreen.id,
            arguments: ImageTile(
              imageTag: imageTag,
              imageURL: imageURL,
            ),
          );
        },
        child: Hero(
          tag: this.imageTag,
          child: Container(
            height: MediaQuery.of(context).size.height * .35,
            width: MediaQuery.of(context).size.width * .45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                  image: NetworkImage(imageURL), fit: BoxFit.fill),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:picture_gallery/widgets/ImageTile.dart';
import 'package:flutter/material.dart';
import 'package:picture_gallery/services/PicsumImage.dart';

//Widget to show the images in grid format
class ImageGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PicsumImage picsumImageObj = PicsumImage();
    return FutureBuilder(
        future: picsumImageObj.getImageData(2),
        builder: (context, snapshot) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              // childAspectRatio: MediaQuery.of(context).size.width /
              //     (MediaQuery.of(context).size.height / 1),
              childAspectRatio: .75,
            ),
            // itemCount: items.length,

            itemCount: 5,
            itemBuilder: (context, index) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Text('No Connection state.');
                case ConnectionState.active:
                case ConnectionState.waiting:
                  return Text('Awaiting result...');
                case ConnectionState.done:
                  if (snapshot.hasError)
                    return Text('Error: ${snapshot.error}');
                  return ImageTile(
                    imageURL: 'https://picsum.photos/id/$index/3670/2462',
                    imageTag: 'image$index',
                  );
              }
              return Text('Unreachable');
              // unreachable
            },
          );
        });
  }
}

//Page which shows all the pictures in their grid format
import 'package:flutter/material.dart';

import 'package:picture_gallery/widgets/ImageGridView.dart';
import 'package:picture_gallery/redux/app_states/AppState.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:picture_gallery/services/PicsumImage.dart';

class GalleryGridScreen extends StatelessWidget {
  static const String id = 'gallery_grid_screen';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Store<AppState>>(
        converter: (store) => store,
        onInit: (store) => {
              print('API calls'),
            },
        builder: (context, store) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Photo Gallery'),
            ),
            body: StoreConnector<AppState, int>(
                //Fetching the numberFavouritedPics from appState.dart as count
                converter: (store) => store.state.getNumberFavouritedPics,
                builder: (context, count) {
                  return SafeArea(
                    child: Column(
                      children: [
                        Container(
                          color: Colors.grey[300],
                          height: 65.0,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 18.0),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            'Favourited Images',
                                          ),
                                          Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(count
                                        .toString()), //Printing the number of favourite pictures here
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: SingleChildScrollView(
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * .80,
                                  width: MediaQuery.of(context).size.width * 1,
                                  child: ImageGridView(),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          );
        });
  }
}

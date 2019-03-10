import 'package:flutter/material.dart';
import 'package:shimmer_practice/example/loading_list/loading_list.dart';
// import 'package:shimmer_practice/example/slide_unlock.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Shimmer'),
        ),
        // body: Center(child: SlideUnlock()),
        body: LoadingList(),
      );
}

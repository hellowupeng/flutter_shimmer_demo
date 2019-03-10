import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shimmer_practice/example/loading_list/list_placeholder.dart';

class LoadingList extends StatelessWidget {
  final Widget child;

  LoadingList({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Shimmer.fromColors(
          baseColor: Colors.grey[300],
          highlightColor: Colors.grey[100],
          child: ListPlaceholder(),
        ),
      );
}

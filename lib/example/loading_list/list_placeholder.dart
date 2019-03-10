import 'package:flutter/material.dart';
import 'package:shimmer_practice/example/loading_list/image_content_placeholder.dart';

class ListPlaceholder extends StatelessWidget {
  const ListPlaceholder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          [0, 1, 2, 3, 4, 5, 6].map((_) => ImageContentPlaceholder()).toList(),
    );
  }
}

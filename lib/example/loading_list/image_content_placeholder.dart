import 'package:flutter/material.dart';
import 'package:shimmer_practice/example/loading_list/content_placeholder.dart';
import 'package:shimmer_practice/example/loading_list/image_placeholder.dart';

class ImageContentPlaceholder extends StatelessWidget {
  const ImageContentPlaceholder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[ImagePlaceholder(), ContentPlaceholder()],
      ),
    );
  }
}

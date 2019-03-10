import 'package:flutter/material.dart';

class ContentPlaceholder extends StatelessWidget {
  const ContentPlaceholder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 8,
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2),
          ),
          Container(
            width: double.infinity,
            height: 8,
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2),
          ),
          Container(
            width: 40,
            height: 8,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

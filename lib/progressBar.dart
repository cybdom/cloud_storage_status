import 'package:flutter/material.dart';

class MyProgressBar extends StatelessWidget {
  final bool isActive;

  const MyProgressBar({Key key, this.isActive}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "35 GB",
                style: TextStyle(
                  color: isActive ? Colors.white : Colors.black87,
                ),
              ),
              Text(
                "75 GB",
                style: TextStyle(
                  color: isActive ? Colors.white : Colors.black87,
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          LinearProgressIndicator(
            value: 0.46,
            backgroundColor: isActive ? Colors.white : Colors.grey[200],
            valueColor: AlwaysStoppedAnimation<Color>(
              Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}

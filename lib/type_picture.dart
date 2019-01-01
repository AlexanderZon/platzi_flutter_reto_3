import 'package:flutter/material.dart';

class TypePicture extends StatelessWidget {

  String type;
  String picture;

  TypePicture({this.type}){
    this.picture = 'https://veekun.com/dex/media/types/en/${this.type}.png';
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 32.0,
      height: 14.0,
      margin: EdgeInsets.only(
        left: 5.0
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(picture)
        )
      ),
    );
  }

}

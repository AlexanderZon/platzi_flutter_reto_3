import 'package:flutter/material.dart';

class HeaderAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    final iconAppBar = Container(
      height: 80,
      padding: EdgeInsets.only(
        top: 38.0,
        left: 20.0
      ),
      child: InkWell(
        child: Column(
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );

    final header = Container(
      height: 80.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFFFFFFF),
            Color(0xFFFFFFFF),
            Color(0xFF666666),
            Color(0xFF666666),
            Colors.redAccent,
            Colors.redAccent,
          ],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(0.0, 1.0),
          stops: [0.0, 0.3, 0.3, 0.4, 0.4, 1.0],
          tileMode: TileMode.clamp,
        )
      ),
      padding: EdgeInsets.only(
        left: 50.0
      ),
      child: Text(
        "Pokémon",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.w100
        ),
        textAlign: TextAlign.center,
      ),
      alignment: Alignment(-0.9, 0.4),
    );

    return Stack(
      children: <Widget>[
        header,
        iconAppBar
      ],
    );
  }
}
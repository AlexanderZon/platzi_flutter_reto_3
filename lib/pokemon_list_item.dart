import 'package:flutter/material.dart';
import 'type_picture.dart';

class PokemonListItem extends StatelessWidget {

  int number;
  String name;
  String picture;
  var types = [];
  
  PokemonListItem({
    this.number,
    this.name,
    this.types
  }) {
    this.picture = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${this.number}.png';
  }

  @override
  Widget build(BuildContext context) {

    final pokemonPicture = Container(
      width: 64.0,
      height: 64.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(picture)
        )
      ),
    );

    final pokemonPictureContainer = Container(
      decoration: BoxDecoration(
        color: Colors.redAccent,
      ),
      child: pokemonPicture,
    );

    final pokemonName = Container(
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0
        ),
      ),
    );

    final pokemonDescription = Container(
      child: Text(
        "Lorem ipsum sit amet...",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 11.0,
          color: Color(0x88000000)
        ),
      ),
    );

    final pokemonDetails = Container(
      margin: EdgeInsets.only(
        left: 15.0
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          pokemonName,
          pokemonDescription,
        ],
      )
    );

    List<Widget> pokemonTypeWidtgets(){
      List<Widget> typeWidgets = [];
      for(int i = 0 ; i < types.length ; i++){
        typeWidgets.add(TypePicture(
          type: types[i],
        ));
      }
      return typeWidgets;
    }

    final pokemonTypeList = Container(
      margin: EdgeInsets.only(
        right: 15.0
      ),
      width: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: pokemonTypeWidtgets(),
      ),
    );

    // TODO: implement build
    return Card(
      child: Row(
        children: <Widget>[
          pokemonPictureContainer,
          pokemonDetails,
          pokemonTypeList
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'pokemon_list_item.dart';

class PokemonList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        top: 80.0,
      ),
      child: Column(
        children: <Widget>[
          PokemonListItem(
            name: "Bulbasaur",
            number: 1,
            types: ['grass','poison'],
          ),
          PokemonListItem(
            name: "Ivysaur",
            number: 2,
            types: ['grass','poison'],
          ),
          PokemonListItem(
            name: "Venusaur",
            number: 3,
            types: ['grass','poison'],
          ),
          PokemonListItem(
            name: "Charmander",
            number: 4,
            types: ['fire'],
          ),
          PokemonListItem(
            name: "Charmeleon",
            number: 5,
            types: ['fire'],
          ),
          PokemonListItem(
            name: "Charizard",
            number: 6,
            types: ['fire'],
          ),
          PokemonListItem(
            name: "Squirtle",
            number: 7,
            types: ['water'],
          ),
          PokemonListItem(
            name: "Wartortle",
            number: 8,
            types: ['water'],
          ),
          PokemonListItem(
            name: "Blastoise",
            number: 9,
            types: ['water'],
          ),
        ],
      ),
    );
  }
}
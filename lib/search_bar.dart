import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String searchText = '';

  void searchFunction(String text) {
    setState(() {
      searchText = text;
    });

    // انجام عملیات جستجو
    // ...
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                onChanged: searchFunction,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: 'جستجو...',border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0),
                ),
                ),
                style:TextStyle(color: Colors.white)
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.search),color: Colors.black54,
          onPressed: () {
            // انجام عملیات جستجو
            // ...
          },
        ),
      ],
    );
  }
}

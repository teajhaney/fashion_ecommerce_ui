import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffE8EEF2),
          icon: Icon(
            Icons.tune,
            color: Theme.of(context).primaryColor,
            size: 70,
          ),
          hintText: 'search',
          prefixIcon: Icon(
            Icons.search,
          ),
          hintStyle: TextStyle(
            fontSize: 20,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

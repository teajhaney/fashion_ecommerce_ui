import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import '../models/cloth.dart';

class RecommendedTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Cloth>(context);
    final primaryColor = Theme.of(context).primaryColor;
    return Container(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: provider.recommended.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(right: 20, bottom: 10),
            height: 300,
            width: 150,
            child: Stack(
              children: [
                Container(
                  height: 300,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: primaryColor,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 1.0,
                      )
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      height: 300,
                      width: 150,
                      image: AssetImage(provider.recommended[index].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

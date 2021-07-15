import 'package:fashion_ecommerce_app/Screens/screens.dart';
import 'package:fashion_ecommerce_app/models/wears.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import '../models/cloth.dart';

class ClothTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Cloth>(context, listen: false);
    final primaryColor = Theme.of(context).primaryColor;
    return Container(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: provider.clothes.length,
        itemBuilder: (BuildContext context, int index) {
          Wears pcloth = provider.clothes[index];
          return Container(
            margin: EdgeInsets.only(right: 20, bottom: 10),
            height: 300,
            width: 200,
            child: Stack(
              children: [
                Container(
                  height: 300,
                  width: 200,
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
                  child: GestureDetector(
                    onTap: () =>
                        // Navigator.pushNamed(
                        //   context,
                        //   CartScreen.routeName,
                        // );
                        Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => CartScreen(
                          cloth: pcloth,
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            height: 220,
                            width: 200,
                            image: AssetImage(pcloth.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 30,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              pcloth.name,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Positioned(
                          bottom: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '${pcloth.price}',
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  width: 130,
                                ),
                                Icon(
                                  Icons.add_box,
                                  color: primaryColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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

import 'package:fashion_ecommerce_app/models/wears.dart';
import 'package:fashion_ecommerce_app/widgets/widget.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  static const routeName = '/cartScreen';
  final Wears cloth;

  CartScreen({required this.cloth});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    Wears wcloth = widget.cloth;

    return Material(
      child: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).primaryColor,
          child: Stack(
            children: [
              Stack(
                children: [
                  Image(
                    height: 600,
                    width: MediaQuery.of(context).size.width,
                    image: AssetImage(wcloth.image),
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(
                            Icons.chevron_left,
                            size: 30,
                          ),
                        ),
                        Icon(
                          Icons.favorite_border,
                          size: 30,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 430,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).primaryColor,
                        offset: Offset(0.0, 0.1),
                        blurRadius: 1.0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              wcloth.name,
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            ),
                            Text(
                              '\$${wcloth.price}',
                              style: TextStyle(
                                fontSize: 30,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          wcloth.description,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Color',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            ColorCircle(
                              color: Colors.brown,
                              child: Icon(
                                Icons.check,
                                color: Colors.black,
                              ),
                            ),
                            ColorCircle(
                              color: Colors.grey,
                            ),
                            ColorCircle(
                              color: Theme.of(context).primaryColor,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Your Size',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            StackSizeCicle(
                              text: 'S',
                              color: Theme.of(context).primaryColor,
                            ),
                            StackSizeCicle(
                              text: 'M',
                              color: Color(0xff7E7165),
                            ),
                            StackSizeCicle(
                              text: 'L',
                              color: Colors.white,
                            ),
                            StackSizeCicle(
                              text: 'XL',
                              color: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: TextButton(
                            child: Text(
                              'Add to Cart',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              primary: Color(0xffE2DEDF),
                              backgroundColor: Color(0xffC3A9D8),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

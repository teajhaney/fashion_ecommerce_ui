import 'wears.dart';
import 'package:flutter/foundation.dart';

class Cloth extends ChangeNotifier {
  List<Wears> clothes = [
    Wears(
      name: 'Winter Coat',
      price: 80.00,
      image: 'images/winter_coat.jpg',
      description:
          'Men\'s Casual Shirts Outerwear Plus Velvet Thicken Warm Plaid Shirt.',
    ),
    Wears(
      name: 'Woolen Shirt',
      price: 99.00,
      image: 'images/woolen_shirt.jpg',
      description: 'Loose Woolen Material Plaid Long-sleeved Shirt Men.',
    ),
    Wears(
      name: 'Casual Wears',
      price: 55.00,
      image: 'images/casual_wears.jpg',
      description:
          'Western  dress code that is relaxed, occasional, spontaneous and suited for everyday use.',
    )
  ];

  List<Wears> recommended = [
    Wears(
      image: 'images/1.jpg',
    ),
    Wears(
      image: 'images/2.jpg',
    ),
    Wears(
      image: 'images/3.jpg',
    ),
    Wears(
      image: 'images/4.jpg',
    ),
    Wears(
      image: 'images/5.jpg',
    ),
  ];
}

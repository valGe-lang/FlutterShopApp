import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
        id: 'p1',
        title: 'Kengät',
        description: 'Juoksukengät',
        price: 80.00,
        imageUrl:
            'https://media.gq.com/photos/61532b9fa4d0cbe908c84ce9/master/w_2000,h_1333,c_limit/Adidas-Originals-NMD_R1-primeblue-shoes.jpg'),
    Product(
        id: 'p2',
        title: 'Paita',
        description: 'Juoksupaita',
        price: 50.00,
        imageUrl:
            'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/bf6ec0ae8ae748a1bc0fa92200c33759_9366/Essentials_Linear_Logo_Tee_Black_DU0404_01_laydown.jpg'),
    Product(
        id: 'p3',
        title: 'Housut',
        description: 'Juoksuhousut',
        price: 60.00,
        imageUrl:
            'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/5861189ad0f74792bc86add10001e9d3_9366/Entrada_22_Sweat_Pants_Black_HB0574_21_model.jpg'),
    Product(
        id: 'p4',
        title: 'Collegepaita',
        description: 'Collegepaita',
        price: 75.00,
        imageUrl:
            'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/f7d03f104d144746a855a91c00ad3394_9366/LOUNGEWEAR_Trefoil_Essentials_Crewneck_Sweatshirt_Black_DV1600_01_laydown.jpg'),
    Product(
        id: 'p5',
        title: 'Reppu',
        description: 'Reppu',
        price: 80.00,
        imageUrl:
            'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/441f7bf366214bc487f2ad9e01210c69_9366/Power_VI_Backpack_Black_HB1324_01_standard.jpg')
  ];

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    notifyListeners();
  }
}

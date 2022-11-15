import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/Screens/tuote_n%C3%A4kym%C3%A4.dart';
import 'Screens/tuote_näkymä.dart';
import 'Screens/tuote_tieto_näkymä.dart';
import 'Screens/ostoskärry_näkymä.dart';
import './providers/products.dart';
import 'providers/cart.dart';

void main() => runApp(ShopApp());

class ShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
      ],
      child: MaterialApp(
          title: 'Kauppa',
          theme: ThemeData(
            primarySwatch: Colors.indigo,
            accentColor: Colors.deepOrange,
          ),
          home: TuoteSivu(),
          routes: {
            ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
            OstosKarrySivu.routeName: ((context) => OstosKarrySivu())
          }),
    );
  }
}

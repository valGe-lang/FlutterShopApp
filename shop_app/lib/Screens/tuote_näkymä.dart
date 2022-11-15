// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../Widgets/products_grid.dart';
import 'package:provider/provider.dart';
import '../providers/cart.dart';
import 'ostoskärry_näkymä.dart';

enum FilterOptions {
  Favorites,
  All,
}

class TuoteSivu extends StatefulWidget {
  @override
  State<TuoteSivu> createState() => _TuoteSivuState();
}

class _TuoteSivuState extends State<TuoteSivu> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    const urlImage =
        'https://d2d69lvc7tiwu6.cloudfront.net/assets/adyen_checkout/header/premium_rebranded/male_header-97ba21e31b31542ece90dfb5ba8ef205.jpg';

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Kauppa'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favorites) {
                  _showOnlyFavorites = true;
                } else {
                  _showOnlyFavorites = false;
                }
              });
            },
            icon: Icon(
              Icons.more_vert,
            ),
            itemBuilder: (_) => [
              PopupMenuItem(
                  child: Text('Vain Suosikit'), value: FilterOptions.Favorites),
              PopupMenuItem(
                  child: Text('Näytä Kaikki'), value: FilterOptions.All),
            ],
          ),
          Container(
              child: IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(OstosKarrySivu.routeName);
                  })),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(urlImage),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: ProductsGrid(_showOnlyFavorites),
          ),
        ),
      ),
    );
  }
}

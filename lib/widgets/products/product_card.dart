import 'package:flutter/material.dart';

import './price_tag.dart';
import './address_tag.dart';
import '../ui_elements/title_default.dart';

class ProductCard extends StatelessWidget {
    final Map<String, dynamic> product;
    final int productIndex;

    ProductCard(this.product, this.productIndex);

    @override
    Widget build(BuildContext context) =>
        Card(
            child: Column(
                children: <Widget>[
                    Image.asset(product['image']),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                                TitleDefault(product['title']),
                                SizedBox(width: 8),
                                PriceTag(product['price'].toString()),
                            ],
                        ),
                    ),
                    AddressTag('Sobradinho II'),
                    ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.info),
                                color: Theme.of(context).accentColor,
                                onPressed: () => _navigateTo(productIndex, context: context),
                            ),
                            IconButton(
                                icon: Icon(Icons.favorite_border),
                                color: Colors.red,
                                onPressed: () {},
                            ),
                        ],
                    )
                ],
            ),
        );

    void _navigateTo(index, {final BuildContext context}) {
        Navigator.pushNamed<bool>(
            context,
            '/product/' + index.toString(),
        );
    }
}

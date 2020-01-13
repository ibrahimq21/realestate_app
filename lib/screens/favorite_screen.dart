import 'package:flutter/material.dart';
import 'package:realestate_app/components/display_card_widget.dart';

class FavoriteScreen extends StatelessWidget {
  static String id = 'favorite_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.arrow_back_ios),
                      Text(
                        'Favorites',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.w700),
                      ),
                      Container(
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                  DisplayCardWidget(
                    imageFile: 'images/house1.jpg',
                    name: 'Clinton Villa',
                    city: 'Los Angeles',
                    price: '\$3,500.00',
                    distance: '2,456',
                    review: 4.4,
                  ),
                  DisplayCardWidget(
                    imageFile: 'images/house.jpg',
                    name: 'IBE House',
                    city: 'Florida',
                    price: '\$4,500.00',
                    distance: '4,100',
                    review: 4.5,
                  ),
                  DisplayCardWidget(
                    imageFile: 'images/house2.jpeg',
                    name: 'Hilton Villa',
                    city: 'California',
                    price: '\$3,100.00',
                    distance: '2,100',
                    review: 4.1,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

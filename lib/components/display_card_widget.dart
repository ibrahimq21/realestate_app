import 'package:flutter/material.dart';

class DisplayCardWidget extends StatelessWidget {
  final String imageFile, name, city, price, distance;

  final double review;

  const DisplayCardWidget(
      {this.imageFile,
      this.name,
      this.city,
      this.price,
      this.distance,
      this.review});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(imageFile)),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10.0)),
      alignment: AlignmentDirectional.topStart,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20.0, top: 10),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            color: Colors.orange,
            child: Text(
              'For Sale',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(top: 90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  price,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.room,
                      color: Colors.white,
                    ),
                    Text(
                      city,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Icon(
                      Icons.directions_car,
                      color: Colors.white,
                    ),
                    Text(
                      '$distance sq/m',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellowAccent,
                ),
                Text(
                  '$review Reviews',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FilterBottomSheetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'Filter',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    ' your search',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 40.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Price',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      ' Range',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              Slider(
                value: 17.0,
                min: 17.0,
                max: 100.0,
                onChanged: (value) {},
              ),
              Text(
                'Rooms',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Text('Any'),
                  ),
                  FlatButton(
                    highlightColor: Colors.blue,
                    onPressed: () {},
                    child: Text('1'),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text('2'),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text('3+'),
                  ),
                ],
              ),
              Text(
                'Bathrooms',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    elevation: 10.0,
                    onPressed: () {},
                    child: Text('Any'),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text('1'),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text('2'),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text('3+'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

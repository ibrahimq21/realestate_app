import 'package:flutter/material.dart';
import 'package:realestate_app/utils/custom_range_thumb_shape.dart';
import 'package:realestate_app/utils/custom_range_value_indicator_shape.dart';
import '../constants.dart';

class FilterBottomSheetScreen extends StatefulWidget {
  @override
  _FilterBottomSheetScreenState createState() =>
      _FilterBottomSheetScreenState();
}

class _FilterBottomSheetScreenState extends State<FilterBottomSheetScreen> {
  double selectedValue;

  RangeValues values = RangeValues(17.0, 100.0);

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
                    style: kTextLabelTheme,
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
                      style: kTextLabelTheme,
                    ),
                    Text(
                      ' Range',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  rangeThumbShape: CustomRangeThumbShape(),
                  activeTrackColor: Color(0xff143896),
                  inactiveTrackColor: Color(0xffDFDFDF),
                  showValueIndicator: ShowValueIndicator.always,
                  valueIndicatorColor: Colors.white,
                  rangeValueIndicatorShape: CustomRangeValueIndicatorShape(),
                  valueIndicatorTextStyle: TextStyle(color: Colors.black),
                  valueIndicatorShape: SliderComponentShape.noOverlay,
                  thumbColor: Color(0xff143896),
//                    thumbShape: RoundSliderThumbShape(
//                        enabledThumbRadius: 20.0, disabledThumbRadius: 2.0)
                ),
                child: RangeSlider(
                  values: values,
                  divisions: 5,
                  min: 17.0,
                  max: 100.0,
                  labels: RangeLabels(
                      '\$${values.start.toInt()}k', '\$${values.end.toInt()}k'),
                  onChanged: (value) {
                    setState(() {
                      values = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Text(
                  'Rooms',
                  style: kTextLabelTheme,
                ),
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
                style: kTextLabelTheme,
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

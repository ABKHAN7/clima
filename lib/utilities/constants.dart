import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kTextFormFieldDecoration = InputDecoration(
  hintText: 'Enter The Name Of CITY',
  fillColor: Colors.white,
  filled: true,
  icon: Icon(
    Icons.location_city_outlined,
    color: Colors.tealAccent,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15)),
    borderSide: BorderSide.none,
  ),
);

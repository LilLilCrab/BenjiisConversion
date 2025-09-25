import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

double farenheitToCelsius(double degreesFar) {
  double celsius = (degreesFar - 32) * 5 / 9;
  return double.parse(celsius.toStringAsFixed(2));
}

double celsiusToFarenheit(double degreesCel) {
  double fahrenheit = degreesCel * 9 / 5 + 32;
  return double.parse(fahrenheit.toStringAsFixed(2));
}

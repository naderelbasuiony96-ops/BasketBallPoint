import 'package:basketball_points/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BasketballPoints());
}

class BasketballPoints extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

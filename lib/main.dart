import 'package:ds3_tbbt_flutter_jokenpo/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BBTJokenpo());

class BBTJokenpo extends StatelessWidget {
  const BBTJokenpo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: MyHomePage(title: 'Big Bang Jokenpo'),
    );
  }
}

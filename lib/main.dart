import 'package:flutter/material.dart';
import 'pages/home_page/home_page.dart';

void main() => runApp(const BBTJokenpo());

class BBTJokenpo extends StatelessWidget {
  const BBTJokenpo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: const MyHomePage(title: 'Big Bang Jokenpo'),
    );
  }
}

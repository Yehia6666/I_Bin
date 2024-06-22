

import 'package:flutter/material.dart';
import 'package:i_bin1/core/functions/check_internet.dart';

class Test extends StatefulWidget {
  Test({Key? key}) : super(key: key);
  static String id = 'Test';

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var res;

  intialdata() async {
    res = await checkInternet();
    print(res);
  }

  @override
  void initState() {
    intialdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children:const [
              Text('yehia reda'),
            ],
          )),
    );
  }
}

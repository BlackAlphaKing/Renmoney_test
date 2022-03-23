import 'package:flutter/material.dart';
import 'package:renmoney_test/Mainpage/datapage.dart';
import 'package:renmoney_test/constants/constants.dart';
import 'package:renmoney_test/widgets/change_theme.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Row(
            children: [
              Text("Dark Mode"),
              ChangeTheme(),
            ],
          )
        ],
        title: Text("RenMoney"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ListedDataPage()));
          },
          child: Text(
            "Press Me",
          ),
        ),
      ),
    );
  }
}

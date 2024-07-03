import 'package:flutter/material.dart';

class StatisticPage extends StatelessWidget {
  const StatisticPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        forceMaterialTransparency: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black45,
              )),
        ),
        centerTitle: true,
        title: Text(
          "Statistics",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Icon(
                Icons.notifications,
                color: Colors.black45,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(12)),
      ),
    );
  }
}

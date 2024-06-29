import 'package:flutter/material.dart';
import 'package:online_payment/components/base_button_widget.dart';
import 'package:online_payment/components/cart_widget.dart';
import 'package:online_payment/pages/dashboard_page.dart';

class AllCardPage extends StatelessWidget {
  const AllCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        forceMaterialTransparency: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black45,
                )),
          ),
        ),
        centerTitle: true,
        title: const Text(
          "All Card",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CartWidget(),
                  SizedBox(
                    height: 10,
                  ),
                  CartWidget(),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              BaseButtonWidget(
                text: "Add Card +",
                onTap: () => Navigator.pushNamed(context, "/addcard"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

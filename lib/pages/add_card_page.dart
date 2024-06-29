import 'package:flutter/material.dart';
import 'package:online_payment/components/base_button_widget.dart';
import 'package:online_payment/components/base_text_field_widget.dart';
import 'package:online_payment/components/cart_widget.dart';

class AddCardPage extends StatelessWidget {
  const AddCardPage({super.key});

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
            "Add New Card",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CartWidget(),
                    SizedBox(
                      height: 15,
                    ),
                    BaseTextFieldWidget(
                      label: "Card Header Name",
                      icon: Icons.person,
                      controller: TextEditingController(text: "Thierry Mouafo"),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: BaseTextFieldWidget(
                            label: "Expiry Date",
                            controller: TextEditingController(text: "12/10/25"),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Expanded(
                          child: BaseTextFieldWidget(
                            label: "4-digit CVV",
                            controller: TextEditingController(text: "2345"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    BaseTextFieldWidget(
                      label: "Card Number",
                      icon: Icons.wallet_travel,
                      controller:
                          TextEditingController(text: "4562 4563 2345 2837"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BaseButtonWidget(text: "Add Card"),
                )
              ],
            ),
          ),
        ));
  }
}

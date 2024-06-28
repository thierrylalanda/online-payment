import 'package:flutter/material.dart';
import 'package:online_payment/components/cart_widget.dart';
import 'package:online_payment/components/transaction_item.dart';
import 'package:online_payment/utils/app_colors.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

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
          "My Card",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Icon(
                Icons.add,
                color: Colors.black45,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              CartWidget(),
              SizedBox(
                height: 20,
              ),
              TransactionItemWidget(
                amount: "- \$5,99",
                description: "Entertainment",
                icon: Icons.apple,
                title: "Apple Store",
                iconColor: AppColors.black,
              ),
              TransactionItemWidget(
                amount: "- \$12,99",
                description: "Music",
                icon: Icons.wifi,
                title: "Spotify",
                iconColor: AppColors.lightGreen,
              ),
              TransactionItemWidget(
                amount: "- \$88",
                description: "Transaction",
                icon: Icons.shopping_basket,
                title: "Grocery",
                iconColor: AppColors.red,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Monthly spending limit",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 130,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Amount: \$8,545.00",
                      style: TextStyle(fontSize: 13),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Slider.adaptive(
                      value: 0.5,
                      onChanged: null,
                      activeColor: AppColors.primary,
                      secondaryActiveColor: AppColors.primary,
                      inactiveColor: AppColors.primary,
                      divisions: 5,
                      thumbColor: AppColors.primary,
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$0",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "\$4,600",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "\$10,000",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

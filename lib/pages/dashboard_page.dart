import 'package:flutter/material.dart';
import 'package:online_payment/components/cart_widget.dart';
import 'package:online_payment/components/transaction_item.dart';
import 'package:online_payment/utils/app_colors.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        forceMaterialTransparency: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: CircleAvatar(
            //backgroundColor: Colors.grey[300],
            backgroundImage: AssetImage("assets/avatar.jpeg"),
          ),
        ),
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome back.",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            Text(
              "Thierry Mouafo",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/search"),
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: Icon(
                  Icons.search,
                  color: Colors.black45,
                ),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CartWidget(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _circularWidget(
                      title: "Sent",
                      icon: Icons.arrow_upward,
                      onTap: () => Navigator.pushNamed(context, "/sendmoney"),
                    ),
                    _circularWidget(
                      title: "Receive",
                      icon: Icons.arrow_downward,
                      onTap: () =>
                          Navigator.pushNamed(context, "/requestmoney"),
                    ),
                    _circularWidget(title: "Load", icon: Icons.attach_money),
                    _circularWidget(title: "Topup", icon: Icons.cloud_upload),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transaction",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, "/history"),
                      child: Text(
                        "Seen All",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primary),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
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
                    amount: "\$300",
                    description: "Transaction",
                    icon: Icons.download_sharp,
                    title: "Money Transfer",
                    amountColor: AppColors.primary),
                TransactionItemWidget(
                  amount: "- \$88",
                  description: "Transaction",
                  icon: Icons.shopping_basket,
                  title: "Grocery",
                  iconColor: AppColors.red,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _circularWidget(
      {required String title, required IconData icon, Function()? onTap}) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey[300],
            child: Icon(
              icon,
              size: 25,
              color: Colors.black87,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(title)
      ],
    );
  }
}

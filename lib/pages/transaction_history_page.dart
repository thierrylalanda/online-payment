import 'package:flutter/material.dart';
import 'package:online_payment/components/transaction_item.dart';
import 'package:online_payment/utils/app_colors.dart';

class TransactionHistoryPage extends StatelessWidget {
  const TransactionHistoryPage({super.key});

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
            "Transaction History",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: const Icon(
                  Icons.refresh,
                  color: Colors.black45,
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Seen All",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primary),
                    ),
                  ],
                ),
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
        ));
  }
}

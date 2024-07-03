import 'package:flutter/material.dart';
import 'package:online_payment/components/transaction_item.dart';
import 'package:online_payment/utils/app_colors.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

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
            "Search",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: const Icon(
                  Icons.close,
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
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.search,
                        size: 25,
                        color: Colors.grey,
                      ),
                      Expanded(
                        child: TextFormField(
                          autofocus: true,
                          decoration: InputDecoration(
                              hintText: "Search ...",
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey[500])),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.close,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ],
                  ),
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

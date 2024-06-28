import 'package:flutter/material.dart';
import 'package:online_payment/utils/app_colors.dart';

class TransactionItemWidget extends StatelessWidget {
  TransactionItemWidget({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.amount,
    this.iconColor = AppColors.black,
    this.amountColor = AppColors.black,
  });
  String title;
  String description;
  String amount;
  IconData icon;
  Color iconColor;
  Color amountColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  radius: 25,
                  child: Icon(
                    icon,
                    color: iconColor,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      description,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    )
                  ],
                )
              ],
            ),
          ),
          Text(
            amount,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: amountColor),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:online_payment/utils/app_colors.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 199,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.black,
        gradient: LinearGradient(
            begin: AlignmentDirectional.bottomStart,
            end: Alignment.topRight,
            colors: [Color(0xFF25253D), Color(0xFF4B5B98)]),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.account_balance_wallet,
                  color: Color(0xFF4B5B98),
                  size: 30,
                ),
                Icon(
                  Icons.volume_up,
                  size: 30,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "4562",
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "4562",
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "4562",
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "4562",
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "AR Jonson",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Expiry Date",
                            style:
                                TextStyle(color: AppColors.white, fontSize: 9),
                          ),
                          Text(
                            "10/26",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CVV",
                            style:
                                TextStyle(color: AppColors.white, fontSize: 9),
                          ),
                          Text(
                            "3456",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Image.asset(
                  "assets/master-card.png",
                  width: 76,
                  height: 46,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:online_payment/components/base_button_widget.dart';
import 'package:online_payment/components/cart_widget.dart';
import 'package:online_payment/utils/app_colors.dart';

class SendMoneyPage extends StatelessWidget {
  const SendMoneyPage({super.key});

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
          "Send Money",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CartWidget(),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey, width: 1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Send To",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Icon(
                                Icons.add,
                                color: AppColors.primary,
                              ),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: AppColors.primary)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Add",
                              style: TextStyle(fontSize: 11),
                            )
                          ],
                        ),
                        _avatarContact(
                            avatarUrl: "assets/avatar.jpeg", name: "Thierry"),
                        _avatarContact(
                            avatarUrl: "assets/avatar.jpeg", name: "Lalanda"),
                        _avatarContact(
                            avatarUrl: "assets/avatar.jpeg",
                            name: "Techno",
                            isSelected: true),
                        _avatarContact(
                            avatarUrl: "assets/avatar.jpeg", name: "Thierry"),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey, width: 1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Enter your amount",
                          style: TextStyle(fontSize: 11),
                        ),
                        Text(
                          "Change currency?",
                          style: TextStyle(color: AppColors.red, fontSize: 11),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "USD",
                          style: TextStyle(color: AppColors.blue, fontSize: 24),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                            child: TextFormField(
                          keyboardType: TextInputType.numberWithOptions(
                              signed: false, decimal: true),
                          style: TextStyle(fontSize: 24),
                          initialValue: "398",
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              BaseButtonWidget(text: "Send Money")
            ],
          ),
        ),
      ),
    );
  }

  Widget _avatarContact(
      {required String name,
      required String avatarUrl,
      bool isSelected = false}) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: isSelected == true
                ? Border.all(color: AppColors.primary, width: 2)
                : null,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(avatarUrl)),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 11),
        )
      ],
    );
  }
}

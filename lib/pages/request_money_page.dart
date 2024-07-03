import 'package:flutter/material.dart';
import 'package:online_payment/components/base_button_widget.dart';
import 'package:online_payment/components/base_text_field_widget.dart';
import 'package:online_payment/components/custom_list_title.dart';
import 'package:online_payment/utils/app_colors.dart';

class RequestMoneyPage extends StatelessWidget {
  const RequestMoneyPage({super.key});

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
          "Request Mooney",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              BaseTextFieldWidget(
                label: "Payer Name",
                icon: Icons.person,
                controller: TextEditingController(text: "Thierry Mouafo"),
              ),
              SizedBox(
                height: 20,
              ),
              BaseTextFieldWidget(
                label: "Email Address",
                icon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
                controller: TextEditingController(text: "thierry@gmail.com"),
              ),
              SizedBox(
                height: 20,
              ),
              BaseTextFieldWidget(
                label: "Description",
                icon: Icons.person_2,
                keyboardType: TextInputType.text,
                controller: TextEditingController(text: "thierry@gmail.com"),
              ),
              SizedBox(
                height: 20,
              ),
              BaseTextFieldWidget(
                label: "Monthly Due By",
                keyboardType: TextInputType.datetime,
                controller: TextEditingController(text: "20/12/2024"),
              ),
              SizedBox(
                height: 20,
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
                height: 50,
              ),
              BaseButtonWidget(text: "Send Money")
            ],
          ),
        ),
      ),
    );
  }
}

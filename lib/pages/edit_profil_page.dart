import 'package:flutter/material.dart';
import 'package:online_payment/components/base_text_field_widget.dart';
import 'package:online_payment/components/custom_list_title.dart';

class EditProfilPage extends StatelessWidget {
  const EditProfilPage({super.key});

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
          "Edit Profile",
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
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/avatar.jpeg"),
                      backgroundColor: Colors.grey[300],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Thierry Mouafo",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Senior Designer",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              BaseTextFieldWidget(
                label: "Full Name",
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
                label: "Phone Number",
                icon: Icons.phone,
                keyboardType: TextInputType.phone,
                controller: TextEditingController(text: "+237 678 23 45 67"),
              ),
              SizedBox(
                height: 20,
              ),
              BaseTextFieldWidget(
                label: "Birth Date",
                keyboardType: TextInputType.datetime,
                controller: TextEditingController(text: "20/12/2024"),
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                child: Text(
                  "Joined 28 Jan 2021",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

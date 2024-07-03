import 'package:flutter/material.dart';
import 'package:online_payment/utils/app_colors.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  int _language = 0;
  @override
  void initState() {
    _language = 0;
    // TODO: implement initState
    super.initState();
  }

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
          "Language",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
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
                        decoration: InputDecoration(
                            hintText: "Search Language",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey[500])),
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _radioLanguage(
                  label: "English",
                  value: 0,
                  assetImage: "assets/country/usa.png"),
              _radioLanguage(label: "French", value: 1),
              _radioLanguage(
                  label: "Australia",
                  value: 2,
                  assetImage: "assets/country/australie.png"),
              _radioLanguage(
                  label: "Spanish",
                  value: 3,
                  assetImage: "assets/country/espagne.png"),
              _radioLanguage(
                  label: "America",
                  value: 4,
                  assetImage: "assets/country/america.png"),
              _radioLanguage(
                  label: "Vietnam",
                  value: 5,
                  assetImage: "assets/country/vietnam.png")
            ],
          ),
        ),
      ),
    );
  }

  Widget _radioLanguage(
      {required String label,
      int value = 2,
      String assetImage = "assets/country/france.png"}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: AppColors.white,
                    child: Image.asset(assetImage),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    label,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Radio(
                value: value,
                groupValue: _language,
                onChanged: (value) {
                  setState(() {
                    _language = value!;
                  });
                },
                focusColor: AppColors.primary,
                activeColor: AppColors.primary,
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            height: 1,
            color: Colors.grey[300],
          )
        ],
      ),
    );
  }
}

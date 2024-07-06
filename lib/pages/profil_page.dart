import 'package:flutter/material.dart';
import 'package:online_payment/components/custom_list_title.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

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
          "Profile",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/editprofil"),
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: const Icon(
                  Icons.person_2,
                  color: Colors.black45,
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/avatar.jpeg"),
                  backgroundColor: Colors.grey[300],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Thierry Mouafo",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Senior Designer",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
              ],
            ),
            CustomListTitle(
              leading: Icon(Icons.person_2_outlined),
              title: "Personal Information",
              icon: Icons.arrow_forward_ios_outlined,
            ),
            CustomListTitle(
              leading: Icon(Icons.wallet),
              title: "Payment Preferences",
              icon: Icons.arrow_forward_ios_outlined,
            ),
            CustomListTitle(
              onTap: () => Navigator.pushNamed(context, "/allcard"),
              leading: Icon(Icons.wallet_giftcard_outlined),
              title: "Banks and Cards",
              icon: Icons.arrow_forward_ios_outlined,
            ),
            CustomListTitle(
              leading: Icon(Icons.notifications_on_outlined),
              title: "Notification",
              icon: Icons.arrow_forward_ios_outlined,
              trealing: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.red,
                child: Center(
                    child: Text(
                  "2",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
            CustomListTitle(
              leading: Icon(Icons.message),
              title: "Message Center",
              icon: Icons.arrow_forward_ios_outlined,
            ),
            CustomListTitle(
              leading: Icon(Icons.map_outlined),
              title: "Address",
              icon: Icons.arrow_forward_ios_outlined,
            ),
            CustomListTitle(
              leading: Icon(Icons.settings_outlined),
              title: "Settings",
              icon: Icons.arrow_forward_ios_outlined,
            ),
          ],
        ),
      ),
    );
  }
}

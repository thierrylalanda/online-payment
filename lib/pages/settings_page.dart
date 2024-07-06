import 'package:flutter/material.dart';
import 'package:online_payment/components/custom_list_title.dart';
import 'package:online_payment/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  var activeBiometrie = false;
  @override
  void initState() {
    setState(() {
      activeBiometrie = false;
    });
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
          child: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black45,
              )),
        ),
        centerTitle: true,
        title: const Text(
          "Settings",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: const Icon(
                Icons.lock_outline,
                color: Colors.black45,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "General",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTitle(
                title: "Language",
                subtitle: "English",
                onTap: () => Navigator.pushNamed(context, "/language"),
                icon: Icons.arrow_forward_ios),
            CustomListTitle(
              title: "My Profil",
              icon: Icons.arrow_forward_ios,
              onTap: () => Navigator.pushNamed(context, "/profil"),
            ),
            CustomListTitle(title: "Contact Us", icon: Icons.arrow_forward_ios),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Security",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
            ),
            CustomListTitle(
              title: "Change Password",
              icon: Icons.arrow_forward_ios,
              onTap: () => Navigator.pushNamed(context, "/changepassword"),
            ),
            CustomListTitle(
              title: "Privacy Policy",
              icon: Icons.arrow_forward_ios,
              onTap: () => Navigator.pushNamed(context, "/termcondition"),
            ),
            const Text(
              "Choose what data you share with us",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTitle(
              title: "Biometric",
              icon: Icons.arrow_forward_ios,
              trealing: Switch.adaptive(
                  value: activeBiometrie,
                  onChanged: (value) {
                    setState(() {
                      activeBiometrie = value;
                    });
                  }),
            ),
            CustomListTitle(
              title: "Dark mode",
              icon: Icons.arrow_forward_ios,
              trealing: Switch.adaptive(
                value: Provider.of<ThemeProvider>(context).isDarkMode,
                onChanged: (value) {
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

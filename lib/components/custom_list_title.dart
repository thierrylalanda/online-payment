import 'package:flutter/material.dart';

class CustomListTitle extends StatelessWidget {
  CustomListTitle(
      {super.key,
      required String this.title,
      String? this.subtitle,
      IconData? this.icon,
      Widget? this.trealing,
      this.onTap,
      Widget? this.leading});

  final String title;
  String? subtitle;
  IconData? icon;
  Widget? trealing;
  Widget? leading;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      leading != null
                          ? Container(
                              padding: EdgeInsets.only(right: 10),
                              child: leading)
                          : const SizedBox(),
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    subtitle != null
                        ? Text(
                            subtitle!,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w200),
                          )
                        : const SizedBox(),
                    const SizedBox(
                      width: 13,
                    ),
                    trealing ??
                        Icon(
                          icon,
                          color: Colors.grey,
                        ),
                  ],
                ),
              ],
            ),
            Divider(
              height: 10,
              color: Colors.grey[300],
            )
          ],
        ),
      ),
    );
  }
}

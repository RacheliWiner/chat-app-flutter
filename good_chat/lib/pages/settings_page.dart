import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:good_chat/components/my_app_bar.dart';
import 'package:good_chat/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: MyAppBar(
        title: 'S E T T I N G S',
        actions: [],
      ),
      body: Center(
        child: Container(
          width: 600,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(12),
          ),
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Dark Mode",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              CupertinoSwitch(
                onChanged: (value) => 
                Provider.of<ThemeProvider>(context, listen: false).toggleTheme(),
                value: Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

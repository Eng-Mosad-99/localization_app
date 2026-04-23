import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization_app/screens/other_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          children: [
            Text('welcome'.tr()),
            Text(context.locale.languageCode),
            ElevatedButton(
              onPressed: () {
                context.setLocale(
                  context.locale.languageCode == 'en'
                      ? const Locale('ar')
                      : const Locale('en'),
                );
              },
              child: Text('changeLanguage'.tr()),
            ),
            ElevatedButton(
              onPressed: () {
                context.resetLocale();
              },
              child: Text('resetLocale'.tr()),
            ),

             ElevatedButton(
              onPressed: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OtherScreen(),
                  ),
                );
              },
              child: Text('go'.tr()),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OtherScreen extends StatelessWidget {
  const OtherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Other Screen')),
      body:  Center(
        child: Column(
          children: [
            Text('This is another screen'),
            Text(context.locale.languageCode == 'en' ? 'Mohammed Mosad' : 'محمد مسعد',),
          ],
        ),
      ),
    );
  }
}
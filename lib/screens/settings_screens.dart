import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/provider_test.dart';
 
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
 
    return Scaffold(
      appBar: AppBar(title: Text('Settings', style: themeProvider.getTextStyle())),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Select Theme:', style: themeProvider.getTextStyle()),
                DropdownButton<String>(
                  value: themeProvider.themeName,
                  isExpanded: true,
                  items: [
                  'Tema 1', 
                  'Tema 2', 
                  'Tema 3', 
                  'Tema 4', 
                  'Tema 5', 
                  'Tema 6',
                  ]
                      .map((theme) => DropdownMenuItem(value: theme, child: Text(theme)))
                      .toList(),
                  onChanged: (value) => themeProvider.setTheme(value!),
                ),
                const SizedBox(height: 20),
                const Divider(),


                Text('Select Font:', style: themeProvider.getTextStyle()),
                DropdownButton<String>(
                  value: themeProvider.fontName,
                  isExpanded: true,

                  items: ['font 1: Open Sans', 'Font 2: Montserrat', 'Font 3: Nunito', 'Font 4: Poppins']
                      .map((font) => DropdownMenuItem(value: font, child: Text(font)))
                      .toList(),
                  onChanged: (value) => themeProvider.setFont(value!),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
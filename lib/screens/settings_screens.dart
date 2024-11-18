import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/theme_provider.dart';
 
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
                  items: ['Tema A', 'Tema B', 'Tema C', 'Tema D', 'Tema E', 'Tema F']
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
                  items: ['Open Sans', 'Montserrat', 'Nunito', 'Poppins']
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
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/theme_provider.dart';
import 'package:quiz/screens/settings_screens.dart';
 
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      theme: themeProvider.getTheme(),
      home: const MainScreen(),
    );
  }
}
 
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Screen Wadidaw', style: themeProvider.getTextStyle())),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Sekarang di ${themeProvider.themeName} \nMenggunakan font ${themeProvider.fontName}',
                        style: themeProvider.getTextStyle(),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      const Divider(),
                      Text(
                        'Ayo coba ubah tema dan font di Settings!',
                        style: themeProvider.getTextStyle(),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SettingsScreen()),
                  );
                },
                child: Text('Mari ubah di Settings', style: themeProvider.getTextStyle()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
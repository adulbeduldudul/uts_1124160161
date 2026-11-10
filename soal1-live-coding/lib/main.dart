import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ContohApp(),
    );
  }
}

class ContohApp extends StatelessWidget {
  const ContohApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(title: const Text('Contoh InfoRow')),
        body: const Column(
          children: [
            InfoRow(icon: Icons.mail_outline, label: 'Email', value: 'adit@example.com'),
            SizedBox(height: 80),
            InfoRow(label: 'Telepon', value: '+62 812-3456-7890', icon: Icons.phone),
            SizedBox(height: 8),
            InfoRow(icon: Icons.place_outlined, label: 'Lokasi', value: 'Bandung'),
            InfoRow(icon: Icons.link, label: 'Website', value: 'ayu.dev', catatan: 'portofolio'),
          ],
        ),
      ),
    );
  }
}
 
class InfoRow extends StatelessWidget {
  const InfoRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    this.catatan, // opsional, boleh null
  });
 
  final IconData icon;
  final String label;
  final String value;
  final String? catatan;
 
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(catatan == null ? value : '$value · $catatan'),
    );
  }
}
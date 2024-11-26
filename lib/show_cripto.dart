import 'package:flutter/material.dart';

class ShowCripto extends StatelessWidget {
  const ShowCripto({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> crypto = ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: Text(crypto['name']!),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/${crypto['icon']}'),
              ),
              SizedBox(height: 16),
              Text(
                crypto['name']!,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                "Símbolo: ${crypto['symbol']}",
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
              SizedBox(height: 8),
              Text(
                "Preço: ${crypto['price']}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)

              ),
              SizedBox(height: 8),
              Text(
                  "Descrição: ${crypto['descripition']}",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)

              ),
            ],
          ),
        ),
      ),
    );
  }
}
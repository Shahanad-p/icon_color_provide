import 'package:button_color_provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('All screen');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Color Provider'),
        centerTitle: true,
      ),
      body: Consumer<ColorsProvide>(
        builder: (context, value, child) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundColor: value.buttonColors,
              child: const Text('Change My color'),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    value.colorYellow();
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                  child: const Text('Yello'),
                ),
                ElevatedButton(
                  onPressed: () {
                    value.colorGreen();
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text('Green'),
                ),
                ElevatedButton(
                  onPressed: () {
                    value.colorPurple();
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                  child: const Text('Purple'),
                ),
                ElevatedButton(
                  onPressed: () {
                    value.colorRed();
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text('Red'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:button_color_provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Color Provider'),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer<ColorsProvide>(
          builder: (context, value, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Text('Change My color'),
                  radius: 100,
                  backgroundColor: value.buttonColors,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        value.colorYello();
                      },
                      child: Text('yello'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        value.colorGreen();
                      },
                      child: Text('Green'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        value.colorPurple();
                      },
                      child: Text('Purple'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

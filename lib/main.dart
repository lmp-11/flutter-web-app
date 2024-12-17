import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Meu Primeiro App Flutter'),
        ),
        body: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Layout para dispositivos pequenos'),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Clique Aqui'),
                    ),
                  ],
                );
              } else {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Layout para dispositivos grandes'),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Clique Aqui'),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}

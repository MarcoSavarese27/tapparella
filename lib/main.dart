import 'package:flutter/cupertino.dart';
import 'package:tapparella/shutter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(brightness: Brightness.dark),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(8.0, 70.0, 8.0, 0.0),
                child: Text(
                  'Seleziona la tapparella, oppure aggiungine una nuova',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  fontFamily: 'futura',
                  ),
                ),
              ),
            ),
          Align(
            alignment: Alignment.bottomRight,
            child: CupertinoButton(
              onPressed: () {
                // ignore: avoid_print
                print('Tapparella creata');
              },
              child: const Icon(CupertinoIcons.plus_app_fill),
            ),
          ),
          CupertinoButton.filled(
            child: const Text('Tapparella Sala'),
            onPressed: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => const ShutterPage()));
            },
          ),
        ],
      )
    );
  }
}

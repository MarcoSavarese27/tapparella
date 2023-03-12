import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final String welcomeMessage =
      'Imposta il livello di apertura e chiusura della tapparella!';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        debugShowCheckedModeBanner: false,
        theme: const CupertinoThemeData(brightness: Brightness.dark),
        home: CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              automaticallyImplyLeading: false,
              trailing: CupertinoButton(
                child: const Icon(CupertinoIcons.plus),
                onPressed: () {
                  // ignore: avoid_print
                  print('ciao');
                },
              ),
            ),
            child: Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 125.0, 0.0, 60.0),
                    child: Text(
                      welcomeMessage,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: 'futura',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  CupertinoButton.filled(
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 80.0),
                      onPressed: () {},
                      child: const Text('Aperta')),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    child: CupertinoButton.filled(
                        padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 80.0),
                        child: const Text('Chiusa'),
                        onPressed: () {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    child: CupertinoButton.filled(
                      padding: const EdgeInsetsDirectional.symmetric(
                                horizontal: 50.0
                              ),
                      child: const Text(
                        'Persiane aperte',
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {}
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 30),
                    child: Text(
                      'oppure imposta un valore percentuale qui sotto',
                      style: TextStyle(
                        fontFamily: 'futura',
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                      ),
                    ),
                  ),
                Row(
                  children: const [
                    
                    Icon(CupertinoIcons.arrow_right)
                  ],
                )
              ],
              ),
            )
      )
    );
  }
}

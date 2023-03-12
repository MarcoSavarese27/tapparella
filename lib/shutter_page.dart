import 'package:flutter/cupertino.dart';

class ShutterPage extends StatelessWidget {
  const ShutterPage({super.key});
  final String welcomeMessage =
      'Imposta il livello di apertura e chiusura della tapparella!';
  
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 60.0),
              child: Text(
                welcomeMessage,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'futura',
                ),
              ),
            ),
            CupertinoButton.filled(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 80.0),
              onPressed: () {},
              child: const Text('Aperta')),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: CupertinoButton.filled(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 80.0),
                child: const Text('Chiusa'),
                onPressed: () {}
                ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: CupertinoButton.filled(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 50.0),
                child: const Text(
                  'Persiane aperte',
                  textAlign: TextAlign.center,
                ),
                onPressed: () {}),
              ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 30),
              child: Text(
                'oppure imposta un valore percentuale qui sotto',
                style: TextStyle(
                  fontFamily: 'futura',
                  ),
                ),
              ),
              Row(
                children: const [Icon(CupertinoIcons.arrow_right)],
              )
            ],
          ),
        )
      );
   }
}

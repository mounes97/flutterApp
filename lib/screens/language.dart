import 'package:flutter/material.dart';
import 'package:myfirstapp/screens/my_store.dart';
class language extends StatefulWidget {
  @override
  _languageState createState() => _languageState();
}
class _languageState extends State<language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LanguageButton(textLanguage: ('English')),
            LanguageButton(textLanguage:('Arabic') ),
          ],
        ),
      ),
    );
  }
}
class LanguageButton extends StatelessWidget {
  final String textLanguage;

  const LanguageButton({ this.textLanguage});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text(textLanguage),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return myStore();
          }));
        }
    );
  }
}
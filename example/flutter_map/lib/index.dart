import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MainButton(
              icon: Icons.collections,
              text: "Countries of the world. Warning: " +
                  "this could be slow on low end devices",
              link: "/countries",
            ),
            MainButton(
              icon: Icons.directions_railway,
              text: "Railroads",
              link: "/railroads",
            )
          ]),
    );
  }
}

class MainButton extends StatelessWidget {
  const MainButton({Key key, this.text, this.icon, this.link})
      : super(key: key);

  final String text;
  final IconData icon;
  final String link;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(children: <Widget>[
        Icon(icon, size: 85.0, color: Colors.grey),
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 20.0),
          child: Text(text,
              textAlign: TextAlign.center,
              textScaleFactor: 1.3,
              style: TextStyle(color: Colors.grey)),
        )
      ]),
      onTap: () => Navigator.of(context).pushNamed(link),
    );
  }
}

import 'package:flutter/material.dart';

class MyGridView {
  GestureDetector getStructuredGridCell(name, image) {
    // Wrap the child under GestureDetector to setup a on click action
    return GestureDetector(
      child: Card(
          elevation: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Image(image: AssetImage('img/' + image)),
              Center(
                child: Text(name),
              )
            ],
          )),
    );
  }

  GridView build() {
    return GridView.count(
      primary: true,
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 2,
      childAspectRatio: 0.85,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        getStructuredGridCell("facebook", "soc/facebook.png"),
        getStructuredGridCell("Twitter", "soc/twitter.png"),
        getStructuredGridCell("Instagram", "soc/instagram.png"),
        getStructuredGridCell("Linkedin", "soc/linkedin.png"),
        getStructuredGridCell("Google Plus", "soc/google_plus.png"),
        getStructuredGridCell("Launcher Icon", "launcher.png"),
      ],
    );
  }
}
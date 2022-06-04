import 'package:flutter/material.dart';
import 'package:sampleproject/main.dart';

void main() {
  runApp(myapp());
}

class list extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: Scaffold(
            appBar: AppBar(title: Text('ListViews'),
            ),
            body: BodyLayout(),
          ),
        );
      }
    }
 
    class BodyLayout extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return _myListView(context);
      }
    }
    Widget _myListView(BuildContext context) {
      return ListView(
        children: <Widget>[
          ListTile(
            title: Text('Black'),
          ),
          ListTile(
            title: Text('White'),
          ),
          ListTile(
            title: Text('Grey'),
          ),
          ListTile(
            title: Text('Grey'),
          ),
          ListTile(
            title: Text('Grey'),
          ),
          ListTile(
            title: Text('Grey'),
          ),
          ListTile(
            title: Text('Grey'),
          ),
          ListTile(
            title: Text('Grey'),
          ),
          ListTile(
            title: Text('Grey'),
          ),
          ListTile(
            title: Text('Grey'),
          ),
          ListTile(
            title: Text('Grey'),
          ),
          ListTile(
            title: Text('Grey'),
          ),
          ListTile(
            title: Text('Grey'),
          ),
          ListTile(
            title: Text('Grey'),
          ),
          ListTile(
            title: Text('Grey'),
          ),
          ListTile(
            title: Text('Grey'),
          ),
          ListTile(
            title: Text('Grey'),
          ),
          ListTile(
            title: Text('Grey'),
          ),
          ListTile(
            title: Text('Grey'),
          ),
        ],
      );
    }
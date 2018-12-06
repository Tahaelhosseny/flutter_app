import 'package:flutter/material.dart';


void main() => runApp(new MaterialApp(
  home: new MyStateLessWedgit(),
));



class MyStateLessWedgit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("MyFirstAppFlutter", textAlign: TextAlign.center)),
      body: new Container(



        child: new Column
          (
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>
          [
            new MyCard(title : new Text("hello") ,icon : new Icon(Icons.favorite)),
            new MyCard(title : new Text("am") ,icon : new Icon(Icons.favorite)),
            new MyCard(title : new Text("taha") ,icon : new Icon(Icons.favorite))
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget
{


  MyCard ({this.title , this.icon});



  final Widget title ;
  final Widget icon ;


  @override
  Widget build(BuildContext context)
  {
      return new Container
        (
        padding : new EdgeInsets.all(10.0),
        
        margin:  new EdgeInsets.all(10.0),
        decoration: new BoxDecoration(color: Colors.lightGreenAccent),
        child: new Column
          (
            children: <Widget>
            [
              this.icon,
              this.title
            ],
        ),
      );
  }

}

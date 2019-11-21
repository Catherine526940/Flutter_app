import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title:"导航演示",
    home: new FirstScreen()
  ));
}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(title: Text('送给一个很重要的人!'),) ,
      body: Center(
        child:RaisedButton(
          child: Text('你敢点吗？'),
        onPressed: (){
        Navigator.push(context,MaterialPageRoute(
          builder:(context)=>new SecondScreen()
          )
          );
        },
        ) 
        ),
      
      );
  }
}

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(title: Text('宇宙最可爱的女孩和最阳光的男孩')) ,
      body: new ListView(
          children: <Widget>[
              new Image.network('http://a4.qpic.cn/psb?/V136lQnt20DDC6/ldCQ4w0uG4ttoFHAOnAj4*TfoBHgYPbvE53PAeoPET8!/m/dJ8AAAAAAAAAnull&bo=qgGSA6oBkgMRBzA!&rf=photolist&t=5',),
              new Image.network('http://a1.qpic.cn/psb?/V136lQnt20DDC6/Ajn3zBBLL9WeMD04Ef5f9q2QicCrYQhUR4SF*UOGenQ!/m/dBABAAAAAAAAnull&bo=VQhABlUIQAYRBzA!&rf=photolist&t=5'),
          ],
        ),
    );
  }
}
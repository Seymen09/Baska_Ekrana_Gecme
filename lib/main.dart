import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
 
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(accentColor: Colors.grey),
      home: HomePage(),

    );
  }
}
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(

        title: Text("SAYFALAR ARASI GEÇİŞ"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(child: Text("git=>Route Pink",style: TextStyle(fontSize: 20),),
            onPressed: (){
              Navigator.push(
                context,MaterialPageRoute(builder: (context) => RoutePink(),)

              );
            }
              
            ,)
          ],
        ),
      ),
    );
  }
}
class RoutePink extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PİNK PAGE"),
      ),
      backgroundColor: Color.fromARGB(255, 228, 84, 132),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(child: Text("git=>Route Green",style: TextStyle(fontSize: 20),),onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RouteGreen(),));
            }),
            ElevatedButton(child: Text("Geri Dön",style: TextStyle(fontSize: 20),), onPressed: (){
              Navigator.pop(context);}),
            
           
          ],
        ),
      ),
    );
    
  }
}
class RouteGreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Green PAGE"),
      ),
      backgroundColor: Colors.green,
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(child: Text("git=>Route Black",style: TextStyle(fontSize: 20),),onPressed: (){}),
            ElevatedButton(child: Text("Geri Dön",style: TextStyle(fontSize: 20),), onPressed: (){
              Navigator.pop(context);}),
            
           
          ],
        ),
      ),
    );
  }
}
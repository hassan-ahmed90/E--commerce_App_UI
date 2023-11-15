import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/splash.jpg'),
            fit: BoxFit.cover,
          )),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ])),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Brand New",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                )),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Prespective",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                )),
            SizedBox(height: 30,),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Let's start with the summer collection.",
                  style: TextStyle(
                      color: Colors.white,
                      // fontWeight: FontWeight.bold,
                      fontSize: 25),
                )),
            SizedBox(height: 29,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(

                height: 50,
                color: Colors.white,
                onPressed: (){},
                child: Center(child: Text("Get Start",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black),),),
              ),
            )
          ],
        ),
      ],
    ));
  }
}

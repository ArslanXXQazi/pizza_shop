import 'package:flutter/material.dart';
import 'package:piza_shop/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   Future.delayed(Duration(seconds: 3),(){
     Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset('assets/splash.jpg'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20,top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/logo.jfif')
              ),
              Text('DODO PIZZA SHOP',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40
              ),),
              Text('pizza & hungry',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),),
            ],
          ),
        )
      ],),
    );
  }
}

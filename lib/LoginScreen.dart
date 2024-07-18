import 'package:flutter/material.dart';
import 'package:piza_shop/HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController idcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Padding(
        padding: const EdgeInsets.only(right: 20,left: 20,top: 120),
        child: SingleChildScrollView(
          child: Column(children: [
            //=================================================>>>1ST column FOr LOGO
              Column(children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/logo.jfif'),
                ),
                Text('DODO PIZZA ',style: TextStyle(
                    color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
                Text('pizza & hungry ',style: TextStyle(
                    color: Colors.yellowAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
              ],),
              SizedBox(height: 10,),


              //===============================================>>>1st TEXTBOX FOR PERSONAL ID
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: idcontroller,
                    decoration: InputDecoration(
                      hintText: "Personal ID",
                      border: InputBorder.none
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),


              //===============================================>>>2nd TEXTBOX FOR PASSWORD
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: passwordcontroller,
                    decoration: InputDecoration(
                      hintText: "password",
                      border: InputBorder.none
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),


              //===================================================>>LOGIN BUTTON
              GestureDetector(onTap: (){
                if(idcontroller.text==""||passwordcontroller.text=="")
                  {
                    print('Enter Email password');
                  }
                else
                  {
                    if(idcontroller.text=='arslan@gmail.com'||
                        passwordcontroller.text=='1234')
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                    }
                  }
              },
                child: Container(
                  height: 50,
                  width: 490,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Text("Login",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),),
                  ),
                ),
              ),
            SizedBox(height: 20,),
            Text('OR',style: TextStyle(color: Colors.white,fontSize: 20),),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              //=============================================>>Row for Facebook & Google
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //=======================================>>>fACEBOOK LOGO
                Container(
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade900,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      Text(' Continue with',style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/facebook.png',),
                      )
                    ],)
                  ),
                ),
                SizedBox(width: 20,),
                //===========================================>>Google logo
                Container(
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      Text('Continue With',style: TextStyle(
                          color: Colors.white,
                        fontSize: 16
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/google.png',),
                      )
                    ],)
                  ),
                ),
              ],),
            )
            ],
            ),
        ),
      ),
    );
  }
}

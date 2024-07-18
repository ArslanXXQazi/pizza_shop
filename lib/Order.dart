import 'package:flutter/material.dart';

class OrderClass extends StatefulWidget {
  String image;
  String title;
  String subtitle;
  String price;
  OrderClass({super.key,
    required this.title,
    required this.image,
    required this.subtitle,
    required this.price
  });
  @override
  State<OrderClass> createState() => _OrderClassState();
}

class _OrderClassState extends State<OrderClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //=============================================>>app BAR
      appBar: AppBar(
        title: Text(widget.title,style: TextStyle(
          color: Colors.green,
          fontSize: 30
        ),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //==============================================>>1st Screen
          Expanded(
            flex: 40,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.white,
              child: Image.asset(widget.image,fit: BoxFit.cover,),
            ),
          ),
          //===============================================>>2nd screen
          Expanded(
            flex:60,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                      Text("Name",style: TextStyle( fontSize: 25,
                          color: Colors.blue),),
                      SizedBox(width: 20,),
                      Text(widget.title,style: TextStyle(
                          fontSize: 25,
                          color: Colors.red
                      ),),
                    ],),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                      Text('Price',style: TextStyle(
                          fontSize: 25,
                          color: Colors.blue
                      ),),
                      SizedBox(width: 20,),
                      Text(widget.price,style: TextStyle(
                          fontSize: 25,
                          color: Colors.red
                      ),),
                    ],),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                      Text("Discription",style: TextStyle(
                          fontSize: 25,
                          color: Colors.blue
                      ),),
                    ],),
                    Row(children: [
                    Text(widget.subtitle,style: TextStyle(
                        color: Colors.red
                    ),),
                  ],),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    width: 150,
                   decoration: BoxDecoration(
                     color: Colors.pink,
                     borderRadius: BorderRadius.circular(20),
                   ),
                    child: Center(child: Text('order',style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),),),
                  )
                ],),
              ),
            )
          )
        ],
      ),
    );
  }
}

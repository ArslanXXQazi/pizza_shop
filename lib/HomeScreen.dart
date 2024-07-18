import 'package:flutter/material.dart';
import 'package:piza_shop/Order.dart';

class Modelclass {
  String? title;
  String? subtitle;
  String? price;
  String? userimage;
  Modelclass(
      {required this.title,
      required this.subtitle,
      required this.price,
      required this.userimage});
}

class HomeScreen extends StatefulWidget {
     HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  List<Modelclass> listname=[
    Modelclass(title: "Margarita", subtitle: 'Medium | Chease, Onion and tomato pure', price: '\$10', userimage: 'assets/pizza1.png'),
    Modelclass(title: "Classic Papparoni", subtitle: 'Medium | Chease, hungarian pepper, capsicum and Onion', price: '\$10', userimage: 'assets/pizza2.jpg'),
    Modelclass(title: "Chicken Supreme", subtitle: 'Medium | Chease, hungarian pepper, capsicum and Onion', price: '\$10', userimage: 'assets/pizza3.webp'),
    Modelclass(title: "Vegeterian", subtitle: 'Medium | Chease, Onion and tomato pure', price: '\$10', userimage: 'assets/pizza4.webp'),
    Modelclass(title: "DODO Speacial", subtitle: 'Medium | Chease, hungarian pepper, capsicum and Onion', price: '\$10', userimage: 'assets/pizza5.webp'),
    Modelclass(title: "Dessert", subtitle: 'Medium | Chease, hungarian pepper, capsicum and Onion', price: '\$10', userimage: 'assets/dessert.webp'),
    Modelclass(title: "Drinks", subtitle: 'Medium | Chease, hungarian pepper, capsicum and Onion', price: '\$10', userimage: 'assets/drink.webp'),
  ];



  // List<String> listname = [
  //   'Margarita',
  //   'Classic Papparoni',
  //   'Chicken Supreme',
  //   'Vegeterian',
  //   'DODO Speacial',
  //   'Dessert',
  //   'Drinks',
  // ];
  //
  // List<String> subtitle = [
  //   'Medium | Chease, Onion and tomato pure',
  //   'Medium | Chease, hungarian pepper, capsicum and Onion',
  //   'Medium | Chease, Onion and' ' tomato pure',
  //   'Medium | Chease, Onion and' ' tomato pure',
  //   'Medium | Chease, hungarian pepper, capsicum and Onion',
  //   'Medium | Chease, hungarian pepper, capsicum and Onion',
  //   'Medium | Chease, hungarian pepper, capsicum and Onion',
  // ];
  //
  // List<String> Price = ['\$12', '\$10', '\$12', '\$12', '\$12', '\$12', '\$6'];
  //
  // List<String> userimages = [
  //   'assets/pizza1.png',
  //   'assets/pizza2.jpg',
  //   'assets/pizza3.webp',
  //   'assets/pizza4.webp',
  //   'assets/pizza5.webp',
  //   'assets/dessert.webp',
  //   'assets/drink.webp',
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),

      ///==================================================>>App Bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('assets/pizzalogo.png'),
            ),
            Text('DODO PIZZA'),
          ],
        ),
        titleTextStyle: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange),
        actions: [
          Row(
            children: [
              Text(
                'Delivery',
                style: TextStyle(fontSize: 20, color: Colors.orange),
              ),
              Icon(
                Icons.arrow_drop_down_outlined,
                color: Colors.orange,
                size: 30,
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          ////============================================>>>Ist Screen
          Expanded(
              flex: 34,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    //==========================================>>>IST CONTAINER FOR LOCTION
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange.shade50,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.location_pin,
                              color: Colors.orange,
                            ),
                            border: InputBorder.none,
                            hintText: '29 Hola Street, California ,USA',
                            hintStyle: TextStyle(color: Colors.orange.shade900),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      //=========================================>>Row for pizza and drinks
                      child: Row(
                        children: [
                          Container(
                            height: 120,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage('assets/pizza1.png'),
                                ),
                                Text('Pizza'),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 120,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage('assets/salaad.webp'),
                                ),
                                Text('Salaad'),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 120,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage('assets/dessert.webp'),
                                ),
                                Text('Dessert'),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 120,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage('assets/sides.jfif'),
                                ),
                                Text('Sides'),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 120,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage('assets/drink.webp'),
                                ),
                                Text('Drinks'),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 120,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage('assets/pizza1.png'),
                                ),
                                Text('Pizza'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),

          ///======================================>>2nd Screen
          Expanded(
            flex: 66,
            child: ListView.builder(
                itemCount: listname.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage(listname[index].userimage.toString()),
                      ),
                      title: Text(listname[index].title.toString()),
                      titleTextStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(listname[index].subtitle.toString()),
                          Text(
                            listname[index].price.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.green),
                          ),
                        ],
                      ),

                      ///==============================================>>>Add Button
                      trailing: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OrderClass(
                                     title: listname[index].title.toString(),
                                      subtitle: listname[index].subtitle.toString(),
                                      price: listname[index].price.toString(),
                                      image: listname[index].userimage.toString(),

                                  )));

                        },
                        child: Container(
                          height: 45,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.orange.shade900,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Center(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                Text(
                                  'ADD',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ));
                }),
          ),
        ],
      ),
    );
  }
}

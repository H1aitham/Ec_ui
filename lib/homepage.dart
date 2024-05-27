import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  Home({super.key});
  List seems = [
    {'images': 'assets/images/Adidas (1).png', 'title': 'Adidas'},
    {'images': 'assets/images/Vector (1).png', 'title': 'Nike'},
    {'images': 'assets/images/fila-9 1.png', 'title': 'Fila'},
    {'images': 'assets/images/puma-logo 1.png', 'title': 'Puma'},
    {'images': 'assets/images/Adidas (1).png', 'title': 'Adidas'}
  ];
  List items = [
    {
      'images': 'assets/images/recty.png',
      'title': 'Nike Sportswear Club\nFleece',
      'price': '\$99',
    },
    {
      'images': 'assets/images/rectanglex.png',
      'title': 'Nike Sportswear Club\nFleece',
      'price': ' \$299',
    },
    {
      'images': 'assets/images/rectanglec.png',
      'title': 'Nike Sportswear Club\nFleece',
      'price': '\$189',
    },
    {
      'images': 'assets/images/card.png',
      'title': 'Nike Sportswear Club\nFleece',
      'price': '\$899',
    },
    {
      'images': 'assets/images/recty.png',
      'title': 'Nike Sportswear Club\nFleece',
      'price': '\$189',
    },
    {
      'images': 'assets/images/rectanglex.png',
      'title': 'Nike Sportswear Club\nFleece',
      'price': '\$899',
    },
    {
      'images': 'assets/images/recty.png',
      'title': 'Nike Sportswear Club\nFleece',
      'price': '\$189',
    },
    {
      'images': 'assets/images/rectanglex.png',
      'title': 'Nike Sportswear Club\nFleece',
      'price': '\$899',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Row(
              children: [
                Icon(
                  Icons.menu,
                  size: 40,
                  color: Color(0xffB8BBC1),
                ),
                Container(
                  width: 425,
                ),
                Icon(
                  Icons.shopping_bag_outlined,
                  size: 40,
                  color: Color(0xffB8BBC1),
                ),
                Container(
                  width: 20,
                )
              ],
            )
          ],
        ),
        body: Container(
          child: ListView(
            children: [
              Container(
                height: 60,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Welcome to Laza.',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff8F959E)),
                        ),
                        Container(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  fillColor: Color(0xffF5F6FA),
                                  filled: true,
                                  hintText: 'Search...',
                                  hintStyle: TextStyle(
                                      color: Color(0xff8F959E), fontSize: 15),
                                  prefixIcon: const Icon(
                                    Icons.search,
                                    color: Color(0xff8F959E),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff9775FA),
                              ),
                              width: 50,
                              height: 50,
                              child: Icon(
                                Icons.mic,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 20,
                      ),
                      Text(
                        "Choose Brand",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Container(
                        width: 340,
                      ),
                      Text("View All",
                          style:
                              TextStyle(fontSize: 13, color: Color(0xff8F959E)))
                    ],
                  ),
                  Container(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    child: ListView.builder(
                        itemCount: seems.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 20),
                                  height: 50,
                                  width: 115,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xffF2F2F2)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                        width: 40,
                                        height: 40,
                                        child:
                                            Image.asset(seems[index]['images']),
                                      ),
                                      Container(
                                        width: 10,
                                      ),
                                      Text(
                                        seems[index]['title'],
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  )),
                            ],
                          );
                        }),
                  ),
                  Container(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 20,
                      ),
                      Text(
                        "New Arraival",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Container(
                        width: 340,
                      ),
                      Text("View All",
                          style:
                              TextStyle(fontSize: 13, color: Color(0xff8F959E)))
                    ],
                  ),
                  Container(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 800,
                      child: GridView.builder(
                          itemCount: items.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, mainAxisExtent: 300),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Aboutus()));
                              },
                              child: Card(
                                child: Column(
                                  children: [
                                    Container(
                                      child:
                                          Image.asset(items[index]['images']),
                                    ),
                                    Container(
                                        color: Colors.white,
                                        width: 300,
                                        height: 89,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              items[index]['title'],
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Text(
                                              items[index]['price'],
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ))
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

class Aboutus extends StatelessWidget {
  const Aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffB8BBC1),
        appBar: AppBar(
          actions: [
            Icon(
              Icons.shopping_bag_outlined,
              size: 40,
              color: Color(0xffB8BBC1),
            ),
            Container(
              width: 15,
            ),
          ],
          backgroundColor: Color(0xffF2F2F2),
        ),
        body: Container(
          width: 1000,
          height: 600,
          color: Colors.white,
          child: Image.asset(
            'assets/images/recty.png',
            fit: BoxFit.fill,
          ),
        ));
  }
}

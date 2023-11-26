import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  final String? image;
  final String? title;
  final String? tag;
  const CategoryPage(
      {super.key, required this.image, required this.title, required this.tag});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
                tag: widget.tag!,
                child: Material(
                  child: Container(
                    height: 360,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.image!),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            colors: [
                              Colors.black.withOpacity(.8),
                              Colors.black.withOpacity(.2),
                            ]),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    //color: Colors.white,
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.search,
                                        color: Colors.white,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite,
                                        color: Colors.white,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.shopping_cart,
                                        color: Colors.white,
                                      )),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            widget.title!,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New Product",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "View More",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 11,
                      ),
                    ],
                  ),
                  
                ],
              ),
            ),
            SizedBox(height: 20,),
            makeImage('images/perfume.jpg', "Perfume", "100Rs"),
            makeImage('images/person.jpg', "Person", "100Rs"),
            makeImage('images/glass.jpg', "Glass", "100Rs"),
            makeImage('images/beauty-1.jpg', "Beauty", "100Rs"),
            makeImage('images/clothes-1.jpg', "Clothes", "100Rs"),


          ],
        ),
      ),
    );
  }
}

Widget makeImage(image, title, price) {
  return Container(
    height: 200,
    width: double.infinity,
    margin: EdgeInsets.only(bottom: 20,left: 10,right: 10),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
          Colors.black.withOpacity(.8),
          Colors.black.withOpacity(.2),
        ]),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: TextStyle(color: Colors.white),),
            SizedBox(height: 5,),
            Text(price,style: TextStyle(color: Colors.white),),
          ],
        ),
      ),
    ),
  );
}

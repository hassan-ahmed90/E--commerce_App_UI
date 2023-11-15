
import 'package:e_commerce/category_page.dart';
import 'package:flutter/material.dart';
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.9),
                      Colors.black.withOpacity(.2),
                    ]
                  )
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.favorite,color: Colors.white,size: 28,),
                          SizedBox(width: 20,),
                          Icon(Icons.shopping_cart,color: Colors.white,size: 28,)
                        ],
                      ),
                    Padding(
                      padding: EdgeInsets.only(top: 350),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "Our New Catergory",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35),
                              )),
                          SizedBox(height: 10,),
                         Row(
                           children: [
                             Padding(
                                 padding: EdgeInsets.symmetric(horizontal: 10),
                                 child: Text(
                                   "View more",
                                   style: TextStyle(
                                       color: Colors.white,
                                       // fontWeight: FontWeight.bold,
                                       fontSize: 25),
                                 )),
                             Icon(Icons.arrow_forward_ios,color: Colors.white,)
                           ],
                         ),
                          SizedBox(height: 10,)
                        ],
                      ),
                    ),
                    ],
                  ),
                )
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Catergories",style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),),
                        Text("All"),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    makeImage(image: 'images/beauty.jpg',title:"Beuty",tag: 'beauty'),
                    makeImage(image: 'images/clothes.jpg',title:"Clothes",tag: 'clothes'),
                    makeImage(image: 'images/perfume.jpg',title:"Perfume",tag: 'perfume'),
                    makeImage(image: 'images/glass.jpg',title:"Glass",tag: 'glass'),

                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Best Selling Categories",style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),),
                        Text("All"),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    makeCategory(image:'images/tech.jpg',title: "Tech"),
                    makeCategory(image:'images/watch.jpg',title: "Watch"),
                    makeCategory(image:'images/perfume.jpg',title: "Pefume"),
                    makeCategory(image:'images/glass.jpg',title: "Glass"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40,),
          ],
        ),
      ),

    );
  }
  Widget makeImage({image,title,tag}){
    return AspectRatio(aspectRatio: 2/2.2,
        child: Hero(
          tag: tag,
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryPage(image: image,tag: tag,title: title,)));
              // Navigator.push(context,MaterialPageRoute(builder: (context)=>CategoryPage()));
            },
            child: Material(
              child: Container(
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  // color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    )
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(.8),
                            Colors.black.withOpacity(.2),

                          ]
                      )
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
}


Widget makeCategory({image,title}){
  return AspectRatio(aspectRatio: 2/2.2,
      child: Material(
        child: Container(
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            // color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              )
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.2),

                    ]
                )
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
        ),
      )
  );
}
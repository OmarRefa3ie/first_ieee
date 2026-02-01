import 'package:flutter/material.dart';

class ResturantScreen extends StatelessWidget {
  const ResturantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, Badwey 👋",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.location_on, size: 16, color: Colors.orange),
                SizedBox(width: 4),
                Text(
                  "Cairo, Egypt",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.white,
        actions: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage("images/www.jpg"),
          ),
        ],
      ),
      body:
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.vertical,
            child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                  SizedBox(height: 15),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(children: [CircleAvatar(radius: 35,backgroundColor: Colors.orange[100],child: Text("🍔",style: TextStyle(fontSize: 32),),), SizedBox(height: 8),Text("Burger",style: TextStyle(fontWeight: FontWeight.bold),)],),
                          SizedBox(width: 17),
                          Column(children: [CircleAvatar(radius: 35,backgroundColor: Colors.red[100],child: Text("🍕",style: TextStyle(fontSize: 32),),), SizedBox(height: 8),Text("Pizza",style: TextStyle(fontWeight: FontWeight.bold),)],),
                          SizedBox(width: 17),
                          Column(children: [CircleAvatar(radius: 35,backgroundColor: Colors.blue[100],child: Text("🥤",style: TextStyle(fontSize: 32),),), SizedBox(height: 8),Text("Drinks",style: TextStyle(fontWeight: FontWeight.bold),)],),
                          SizedBox(width: 17),
                          Column(children: [CircleAvatar(radius: 35,backgroundColor: Colors.red[100],child: Text("🍩",style: TextStyle(fontSize: 32),),), SizedBox(height: 8),Text("Dessert",style: TextStyle(fontWeight: FontWeight.bold),)],),
                          SizedBox(width: 17),
                          Column(children: [CircleAvatar(radius: 35,backgroundColor: Colors.grey[300],child: Text("🍖",style: TextStyle(fontSize: 32),),), SizedBox(height: 8),Text("BBQ",style: TextStyle(fontWeight: FontWeight.bold),)],),
                          SizedBox(width: 17),
                          Column(children: [CircleAvatar(radius: 35,backgroundColor: Colors.grey[300],child: Text("☕",style: TextStyle(fontSize: 32),),), SizedBox(height: 8),Text("Hot",style: TextStyle(fontWeight: FontWeight.bold),)],),
                        ],
                      )
                  ),
                  SizedBox(height: 20),
                  Text("Popular Deals 🔥",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                  GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 0.76,
                    children: [
                      Container(
                          width: double.infinity,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("images/photo-1546069901-ba9599a7e63c.jpg"),
                                fit: BoxFit.cover
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 70),
                              Text(
                                "   Lunch Deal",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black,
                                        blurRadius: 4,
                                      ),
                                    ]
                                ),
                              ),
                            ],
                          )
                      ),
                      Container(
                          width: double.infinity,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("images/photo-1555939594-58d7cb561ad1.jpg"),
                                fit: BoxFit.cover
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "   Family Pack",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black,
                                        blurRadius: 4,
                                      ),
                                    ]
                                ),
                              ),
                            ],
                          )
                      ),
                      Container(
                          width: double.infinity,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("images/photo-1484723091739-30a097e8f929.jpg"),
                                fit: BoxFit.cover
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "   50% OFF",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black,
                                        blurRadius: 4,
                                      ),
                                    ]
                                ),
                              )],
                          )
                      ),
                      Container(
                          width: double.infinity,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("images/photo-1493770348161-369560ae357d.jpg"),
                                fit: BoxFit.cover
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "   Morning Breakfast",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    shadows: [

                                      Shadow(
                                        color: Colors.black,
                                        blurRadius: 4,
                                      ),
                                    ]
                                ),
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                  Text("Nearby Restaurants",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder:(context,index){
                      return Row(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage("images/photo-1504674900247-0877df9cc836.jpg"),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Happy Restaurant ${index+1}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                              SizedBox(height: 3),
                              Text("BBQ Burger Fast Food",style: TextStyle(color: Colors.grey),),
                              SizedBox(height: 3),
                              Text("⭐ 4.5 ",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          )
                        ],
                      );
                    },
                    separatorBuilder: (context,index){
                      return Divider(thickness: 1,color: Colors.grey,);
                    },
                  ),
                  Text("Recent Orders",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 240,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange[50],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.history,color: Colors.orange,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Margherita",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text("Pizza",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text("Delivered",style: TextStyle(color: Colors.grey),),
                                  Text("Yesterday",style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                              Text("Re-order",style: TextStyle(color: Colors.deepPurple),)
                            ],
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          width: 240,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange[50],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.history,color: Colors.orange,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Chicken",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text("Shawarma",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text("Delivered",style: TextStyle(color: Colors.grey),),
                                  Text("Yesterday",style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                              Text("Re-order",style: TextStyle(color: Colors.deepPurple),)
                            ],
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          width: 240,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange[50],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.history,color: Colors.orange,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Margherita",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text("Pizza",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text("Delivered",style: TextStyle(color: Colors.grey),),
                                  Text("Yesterday",style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                              Text("Re-order",style: TextStyle(color: Colors.deepPurple),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 50,)
                ],
              ),
          ),
    );
  }
}

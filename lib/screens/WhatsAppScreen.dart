import 'package:flutter/material.dart';
class WhatsAppScreen extends StatelessWidget {
  const WhatsAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:Color(0xFF075E54),
          title: Text("WhatsApp",style: TextStyle(fontSize: 27),),
          actions: [Icon(Icons.search,size: 27),SizedBox(width: 15,),Icon(Icons.more_vert,size: 27)],
        ),
        body:
            Container(
              color: Colors.white,
              child:
              Column(
                children: [
                  SizedBox(
                    height: 40,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(width: 60, height: 40, margin: EdgeInsets.all(5), decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 3)),child: Center(child: Text("All"),),),
                          Container(width: 60, height: 40, margin: EdgeInsets.all(5), decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 3)),child: Center(child: Text("Unread"),),),
                          Container(width: 60, height: 40, margin: EdgeInsets.all(5), decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 3)),child: Center(child: Text("Groups"),),),
                          Container(width: 60, height: 40, margin: EdgeInsets.all(5), decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 3)),child: Center(child: Text("Friends"),),),
                          Container(width: 60, height: 40, margin: EdgeInsets.all(5), decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 3)),child: Center(child: Text("Collage"),),),
                          Container(width: 60, height: 40, margin: EdgeInsets.all(5), decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 3)),child: Center(child: Text("Family"),),),
                          Container(width: 60, height: 40, margin: EdgeInsets.all(5), decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 3)),child: Center(child: Text("club"),),),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context,index){
                        return ListTile(
                          leading: Icon(Icons.person,size: 40,),
                          title: Text("Ahmed Mohamed",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
                          subtitle: Text("السلام عليكم إزيك يا هندسة"),
                          trailing: Text("10:30 pm"),
                        );
                      },
                    ),
                  ),
                ],
              )
            ),
      floatingActionButton: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(color: Colors.green,borderRadius:BorderRadius.circular(10)),
        child: IconButton(onPressed: (){}, icon: Icon(Icons.chat)),
      ),
    );
  }
}
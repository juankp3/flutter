import 'package:flutter/material.dart';
// 2:49
class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        width: 200.0,
        color: Colors.amber,
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black38,
        centerTitle: true,
        title: Text('Home'),
        actions: [
          Icon(Icons.notification_add_outlined),
          SizedBox(width: 15.0),
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8XfqkhssrEINW3QBV7YglLweSnv0eW28sQFmSABv1otSN5dTIydVwfITeQaQgdei4rt8&usqp=CAU"
              ),
          ),
          SizedBox(width: 15.0)
        ],
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index){
          return getListType();
        },
      ),
      // body: ListView(
      //   children: [
      //     getListType(),
      //     getListType(),
      //     getListType(),
      //   ],
      // ),
    );
  }


  Widget getListType() {
    return ListTile(
      title: Text('Juan'),
      subtitle: Text('kugaaa'),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8XfqkhssrEINW3QBV7YglLweSnv0eW28sQFmSABv1otSN5dTIydVwfITeQaQgdei4rt8&usqp=CAU"
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 20.0,
        color: Colors.blue,
      ),
    );
  }
}
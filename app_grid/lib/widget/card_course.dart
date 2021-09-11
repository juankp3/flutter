import 'package:flutter/material.dart';

class CardCourse extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0, bottom: 20.0),
      child: Container(
        child: Column(
          children: [
            // _getCard(),
            // _getGridCard(itemHeight, itemWidth)
            _getGridCard2()
          ],
        ),
      ),
    );
  }



  static const kListHeight = 150.0;

  Widget _getGridCard2(){
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          childAspectRatio: 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue,
            child: _getCard(),
          );
        },
      ),
    );
  }


  Widget _getCard(){
    return Card(
      elevation: 1.5,
      // margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        // child: _cardTipo2(),
        child: Text('Hola'),
      ),
    );
  }


  Widget _cardTipo2() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 400.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("jkuga.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20.0,
                left: 16.0,
                right: 5.0,
              ),
              child: Text(
                "Coding",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 5.0,
                left: 16.0,
                right: 5.0,
              ),
              child: Text(
                "12 Courses",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black38,
                ),
              ),
            ),
          ],
        ),
      );
  }

}


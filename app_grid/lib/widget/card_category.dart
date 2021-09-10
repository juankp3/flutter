import 'dart:js';

import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 0, bottom: 20.0),
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



  Widget _getGridCard(itemHeight, itemWidth){
    return GridView.count(
      crossAxisCount: 2,
      controller:  ScrollController(keepScrollOffset: false),
      shrinkWrap: true,

      // childAspectRatio: MediaQuery.of(context).size.width / ((MediaQuery.of(context).size.height ) / 2),
      // childAspectRatio:  0.501,
      childAspectRatio: (itemWidth / itemHeight),
      mainAxisSpacing: 0.0,
      crossAxisSpacing: 50.0,
      scrollDirection: Axis.vertical,
      children: List.generate(30, (index){
        return _getCard();
      }),
    );
  }

  Widget _getGridCard2(){
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 16.0,
        mainAxisExtent: 220
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          // color: Colors.blue,
          child: _getCard(),
        );
      },
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
        child: _cardTipo2(),
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
              height: 120.0,
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


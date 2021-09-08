import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print("aaaaa");
    // print(MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height ));
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 0),
      child: Container(
        child: GridView.count(
          crossAxisCount: 2,
          controller:  ScrollController(keepScrollOffset: false),
          shrinkWrap: true,
          childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height ),
          // childAspectRatio: 0.781890482398957,
          scrollDirection: Axis.vertical,
          children: List.generate(30, (index){
            return _getCard();
          }),
        ),
      ),
    );
  }

  Widget _getCard(){
    return Card(
      elevation: 10.0,
      margin: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        child: _cardTipo2(),
      ),
    );
  }

  Widget _cardTipo2() {
    return Container(
        // width: 10.0,
        // height: 100.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 180.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("jkuga.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 5.0,
                  left: 5.0,
                  right: 5.0,
                ),
                child: Text(
                  "Trading",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 5.0,
                  left: 5.0,
                  right: 5.0,
                ),
                child: Text(
                  "Este es un sub title es un sub title es un sub title sfs",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 11.0,
                    color: Colors.black38,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }

}


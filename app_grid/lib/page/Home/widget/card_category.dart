import 'package:app_grid/page/Course/course_page.dart';
import 'package:app_grid/theme.dart';
import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 0, bottom: 20.0),
      child: Container(
        child: Column(
          children: [
            _getGridCard()
          ],
        ),
      ),
    );
  }

  Widget _getGridCard(){
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
          child: _getCard(context),
        );
      },
    );
  }


  Widget _getCard(context){
    return GestureDetector(
      child: Card(
        elevation: 1.5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          child: _card(),
        ),
      ),
      onTap: (){
        print("Holaa esto es una prueba");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CoursePage(),
            )
        );
      },
    );
  }

  Widget _card() {
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
                  image: AssetImage("assets/jkuga.jpg"),
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
                style: AppTheme.headLine3,
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
                style: AppTheme.headLine2,
              ),
            ),
          ],
        )
      );
  }

}


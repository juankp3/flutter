import 'package:app_grid/theme.dart';
import 'package:flutter/material.dart';

class CardCourse extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      margin: EdgeInsets.symmetric(vertical: 30.0),
      // color: Colors.red,
      child: _getGridCard()
    );
  }


  Widget _getGridCard(){
    return GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            childAspectRatio: 1,
            // crossAxisSpacing: 20,
            // mainAxisSpacing: 20
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return _getCard();
          },
    );
  }


  Widget _getCard(){
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
      child: Card(
        elevation: 1.5,
        // color: Colors.amber,
        margin: EdgeInsets.only(left: 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Stack(
              children: [
                _contentCard(),
                _schedule()
              ]
            ),
          ),
        ),
      ),
    );
  }

  Widget _contentCard(){
    return   Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Android Developer', style: AppTheme.headLine8),
        SizedBox(height: 12.0),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppTheme.ColorPrimaryPurple,
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              child: Text('\$50.00', style: AppTheme.headLine7),
            ),
          ),
        )

      ],
    );
  }

  Widget _schedule(){
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppTheme.ColorPrimaryPurple)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Row(
              children: [
                Icon(Icons.timer),
                SizedBox(width: 4.0),
                Text('8 hours, 20min')
              ],
            ),
          ),
        ),
      )
    );
  }

}


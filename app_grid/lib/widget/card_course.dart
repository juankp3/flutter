import 'package:app_grid/theme.dart';
import 'package:flutter/material.dart';

class CardCourse extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0, top: 20.0, bottom: 20.0),
      child: Container(
        child: Column(
          children: [
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
            child: _getCard(),
          );
        },
      ),
    );
  }


  Widget _getCard(){
    return Card(
      elevation: 1.5,
      // margin: EdgeInsets.all(50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Stack(
            children: [
              _contentCard(),
              _horario()
            ]
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

  Widget _horario(){
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


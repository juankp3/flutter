import 'package:flutter/material.dart';
import 'package:flutter_application_2/page/task1/widgets/button_view.dart';
import 'package:flutter_application_2/page/task1/widgets/title_view.dart';


class Task1Page extends StatelessWidget {
  const Task1Page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:
          Column(
            children: [
              Image.asset('machu-picchu.jpeg', fit: BoxFit.cover),
              Container(
                margin: new EdgeInsets.symmetric(horizontal: 25.0),
                child:
                  Column(
                    children: [
                      SizedBox(height: 20.0),
                      TitleView(
                        title: "Machu Picchu",
                        subtitle: "Todo lo que necesitas saber para visitar la ciudad",
                        star: "41"
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ButtonView(icon: Icons.call, title: "CALL"),
                          ButtonView(icon: Icons.near_me, title: "ROUTE"),
                          ButtonView(icon: Icons.share, title: "SHARE"),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'La antigua ciudad sagrada de los incas se encuentra en la región peruana de Cuzco, a 2.430 metros sobre el nivel del mar en la cordillera oriental de los Andes. Se estima que su construcción fue llevada a cabo sobre el año 1450 y es considerada una verdadera obra maestra de la ingeniería. Todo un complejo religioso, político y administrativo de carácter sagrado que fue abandonado por los incas en la segunda mitad del siglo XVI, y aunque nunca fue olvidada no fue hasta principios del siglo XX cuando se llevaron a cabo las primeras investigaciones.',
                        style: TextStyle(height: 1.5,letterSpacing: 1.0 ),
                      ),
                    ]
                  ),
              )
            ],
          ),
      ),
    );
  }
}
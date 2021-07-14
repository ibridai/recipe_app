import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: MyRecipePage(),
      title: 'Recipe App',
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyRecipePage extends StatefulWidget {
  MyRecipePage({Key? key}) : super(key: key);

  @override
  _MyRecipePageState createState() => _MyRecipePageState();
}

class _MyRecipePageState extends State<MyRecipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4DD0E1),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white, 
                  onPressed:() {},
                ),
                Container(
                   width: 125.0,
                child: Row (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.filter_list),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                      onPressed: () {},
                      ),
                  ]
                ),
                )
              ],
            )
          ),
          SizedBox(height: 24.0),
          Padding(
            padding: EdgeInsets.only(left:40.0),
            child: Row(
              children: <Widget>[
                Text('Healthy',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0)),
                SizedBox(width: 10.0),
                  Text('Food',
                  style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontSize: 25.0))
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height -300.0,
                    child: ListView(children: [
                      _buildFoodItem('assets/food.jpg', 'Salmon bowl', '\$24.00',),
                      _buildFoodItem('assets/food2.jpg', 'Marin bowl', '\$56.00',),
                      _buildFoodItem('assets/food3.jpg', 'Dagrin bowl', '\$30.00',),
                      _buildFoodItem('assets/food4.jpg', 'Tinmax bowl', '\$74.00',),
                      _buildFoodItem('assets/food5.jpg', 'Local bowl', '\$14.00',),
                      _buildFoodItem('assets/food6.jpg', 'African bowl', '\$624.00',),
                      _buildFoodItem('assets/food2.jpg', 'Marin bowl', '\$56.00',),
                      _buildFoodItem('assets/food3.jpg', 'Dagrin bowl', '\$30.00',),
                      _buildFoodItem('assets/food4.jpg', 'Tinmax bowl', '\$74.00',),
                      _buildFoodItem('assets/food3.jpg', 'Dagrin bowl', '\$30.00',),
                      _buildFoodItem('assets/food4.jpg', 'Tinmax bowl', '\$74.00',),
                      _buildFoodItem('assets/food5.jpg', 'Local bowl', '\$14.00',),
                      _buildFoodItem('assets/food6.jpg', 'African bowl', '\$624.00',),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
  
  Widget _buildFoodItem(String imgPath, String foodName, String price) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
        onTap: () {

        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Hero(
                    tag: imgPath,
                    child: Image(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                      height: 75.0,
                      width: 75.0,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text(
                        foodName,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 17.0, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                       Text(
                        price,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15.0, 
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),  
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              color: Colors.black,
              onPressed: () {}
            ),
          ],
        ),
      ),
    );
  }
}


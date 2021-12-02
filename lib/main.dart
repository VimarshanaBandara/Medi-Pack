import 'package:flutter/material.dart';
import 'package:medi_reminder/components/categoryCard.dart';
import 'package:medi_reminder/constant.dart';
import 'package:medi_reminder/models/products.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   List<Product> products = [
     Product('Surgical Mask', "It is designed to prevent infections.",
         'assets/mask.png', 160),
     Product(
         'Black n95 Mask',
         "It is n95 mask designed to prevent infections in patients.",
         'assets/black_mask.png',
         250),
     Product('Eye Patch', "It is designed to prevent infections in eyes.",
         'assets/eyepatch.png', 300),

   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: AppBar(
        backgroundColor: kPrimary,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.bar_chart, color:kTextPrimary, size: 30.0,),
          onPressed: (){},
        ),

        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          )
        ],


      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('HI VIMARSHANA',style: TextStyle(color: kTextPrimary ,fontSize: 25.0),),
            Text('Delever to',style: TextStyle(color: Colors.grey ,fontSize: 18.0),),

            Row(
              children: [
                Text('Current Location',style: TextStyle(color: kTextPrimary ,fontSize: 18.0,fontWeight: FontWeight.bold),),
                Icon(Icons.arrow_drop_down , size: 20.0, color: kPrimary,)
              ],
            ),

            SizedBox(height: 20.0,),
            FlatButton(
              onPressed: (){},
              padding: EdgeInsets.symmetric(horizontal: 15.0 , vertical: 15.0 ),
              color: kSecondary,
              splashColor: kPrimary,
              child: Row(
                children: [
                  Icon(Icons.camera , size:30.0 , color: kTextPrimary, ),
                  SizedBox(width: 10.0,),
                  Text('Upload Your Prescription',style: TextStyle(color: kTextPrimary , fontSize: 22.0),)
                ],
              ),

            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Categories',style: TextStyle(color: kTextPrimary, fontSize: 20.0),),
                Text('View All',style: TextStyle(color: kTextSecondary, fontSize: 15.0,fontWeight: FontWeight.bold),)
              ],
            ),
            const SizedBox(height: 15.0,),
            Container(
              height: 125.0,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children:  const [
                  CategoryCard(
                    title: 'FirstAid',
                    icon: Icons.shopping_bag_outlined,
                  ),
                  CategoryCard(
                    title: 'Medicines',
                    icon: Icons.book,
                  ),
                  CategoryCard(
                    title: 'HealthCare',
                    icon: Icons.apartment,
                  ),
                ],
              ),

            ),
            const SizedBox(height: 12.0,),
            Text('Today\'s Details',style: TextStyle(color: kTextPrimary, fontSize: 20.0),),
            const SizedBox(height: 15.0,),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                 Container(
                   padding: EdgeInsets.symmetric(vertical:10.0 ),
                   margin: EdgeInsets.only(bottom: 15.0),
                   width: MediaQuery.of(context).size.width,
                   decoration: BoxDecoration(
                     color:  kTextSecondary,
                     borderRadius: BorderRadius.circular(20.0),
                     boxShadow: [
                       BoxShadow(
                         color: Color(0XFF073738),
                         offset: Offset(2,3),
                         blurRadius: 10.0,

                       )
                     ]
                   ),

                 )
                ],
              ),
            )
          ],
        ),
      )

    );
  }
}



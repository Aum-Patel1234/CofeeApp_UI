// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/widgets/appbar_icons.dart';
import 'package:flutter_application_1/widgets/cards.dart';
import 'package:flutter_application_1/widgets/horizontal_card.dart';

void main() {
  runApp(const ItemScreen());
}

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 94, 66, 56),
      appBar: AppBar(
        // backgroundColor: Colors.red,
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: const Color.fromARGB(255, 94, 66, 56),
        flexibleSpace: Container(
          alignment: Alignment.bottomCenter,
          height: 100,
          color: const Color.fromARGB(255, 94, 66, 56),
          child: Container(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            // color: Colors.black12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Hello, Brie Larson',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 94, 66, 56),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: const Row(
                children: [
                  MenuBarWidgets(
                    text: 'Coffee',
                    color: Color.fromARGB(255, 140, 98, 83),
                  ),
                  MenuBarWidgets(text: 'Tea'),
                  MenuBarWidgets(text: 'Juice'),
                  MenuBarWidgets(text: 'Cake'),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 380,
              // color: Colors.amber,
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: const Row(
                    children: [
                      CustomCard(
                        heading: 'Espresso\nBrown Coffee',
                        description: 'Complex Flavor.',
                        price: 5.99,
                        url:r'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMWSAZq6vo3-ah3nJ90nSL-v_9wPsw0ogOqGV9pO-GASTIKhZOjSWPybxii5Z8LHVzIKM&usqp=CAU',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CustomCard(
                        heading: 'Iced Cocoa\nwith Milk',
                        description: 'Complex Flavor.',
                        price: 7.99,
                        url:r'https://neurosciencenews.com/files/2023/06/coffee-brain-caffeine-neuroscincces.jpg',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(24, 0, 10, 0),
              height: 30,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'View All',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(24, 5, 10, 0),
              height: 220,
              // color: Colors.amber,
              child: const SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Horizontal_card( heading: 'Americano', description: 'Simplicity itself', price: 3.99,url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS78H-tTv-BoM5TYTGg_OYffOTXnUSvwAHr_Q&s',),
                    SizedBox(height: 15,),
                    Horizontal_card( heading: 'Macchiato', description: '2 SHots of Espresso', price: 4.99,url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS78H-tTv-BoM5TYTGg_OYffOTXnUSvwAHr_Q&s',),
                    SizedBox(height: 15,),
                    Horizontal_card( heading: 'Americano', description: 'Simplicity itself', price: 3.99,url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS78H-tTv-BoM5TYTGg_OYffOTXnUSvwAHr_Q&s',),
                    SizedBox(height: 15,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Home',textDirection: TextDirection.ltr,),backgroundColor: Colors.amber,),
      body: Stack(
        children: [
          Container(
            width: 420,
            height: 650,
            color: Colors.red,
            child: Stack(
              children: [
                const Image(
                  width: 500,
                  height: 650,
                  fit: BoxFit.cover,
                  image: AssetImage(
                      'assets/images/pexels-chevanon-photography-312418.jpg'),
                ),
                // SizedBox(height: 100,),

                Container(
                  width: 500,
                  height: 650,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 187, 120, 97),
                        Colors.transparent,
                        Color.fromARGB(255, 94, 66, 56)
                      ],
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(50, 80, 0, 0),
                    child: const Text(
                      'Amazing\ntaste of\nCoffee ',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 184, 132, 113)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 645, 0, 0),
            child: Container(
              width: 420,
              height: 250,
              color: const Color.fromARGB(255, 94, 66, 56),
              child: Column(
                children: [
                  const Text(
                    'Prepare to tantalize your taste buds\nwith the amazing taste of cofee\nlike never before',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding:const EdgeInsets.fromLTRB(55, 0, 0, 0),
      
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 124, 75, 58),
                          ),
                          width: 170,
                          height: 55,
                          // color: Color.fromARGB(255, 124, 75, 58),
                          child: const Center(
                            child: Text(
                              'Get Started',
                              textDirection: TextDirection.ltr,
                              style: TextStyle(fontSize: 19,color: Colors.white,fontWeight: FontWeight.w600),
                            
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                        child: const Text('Skip',textDirection: TextDirection.ltr,),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const Item_information());
}

// ignore: camel_case_types
class Item_information extends StatelessWidget {
  const Item_information({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Column(
        children: [
          Container(
            height: 470,
            color: Colors.red,
            child: Stack(
              children: [
                const Image(
                  height: 480,
                  image: AssetImage('assets/images/coffeeCup.webp'),
                  fit: BoxFit.cover,
                ),
                Positioned(
                  left: 10,
                  top: 35,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios_new_outlined),
                    iconSize: 25,
                    color: Colors.white,
                  ),
                ),
                const Positioned(
                  left: 180,
                  bottom: 20,
                  child: Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 10,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 10,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 420,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 60, 42, 36),
            ),
            child: Container(
              padding: const EdgeInsets.fromLTRB(25, 10, 20, 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 30,
                      height: 2,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    // remove const if passing the text as variable
                    'Expresso Brown Coffee',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    // remove const if passing the text as variable
                    'Complex, yet smooth flavor made to order.',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '4.5',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 20, color: Colors.orange),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '(10k)',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    // remove const if passing the text as variable
                    'Size',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      priceboxes(price: 250, border: false),
                      const SizedBox(width: 10),
                      priceboxes(price: 350, border: true),
                      const SizedBox(width: 10),
                      priceboxes(price: 450, border: false),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              width: 38,
                              height: 38,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.brown,
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ), // remove const if variable and onPressed button
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            const Text(
                              '1',
                              textDirection: TextDirection.ltr,
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Container(
                              width: 38,
                              height: 38,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.brown,
                              ),

                              child: Align(
                                alignment: Alignment.center,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ), // Aligning icon in the center
                                ),
                              ),
                              // remove const if variable and onPressed button
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        '\$5.99',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 60,
                   
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 134, 95, 81),
                    ),
                    child: const Center(
                      child: Text('Add to Order',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.white),),
                    ),
                  )

                ],
                
              ),
            ),
            
          ),
        ],
      ),
    );
  }

  Widget priceboxes({required int price , IconData icon = Icons.ad_units_outlined,  required bool border} ) {
    Border? borderColor;
    Color color = const Color.fromARGB(255, 202, 198, 198);
    if (border) {
      borderColor = Border.all(color: Colors.brown, width: 2);
      color = Colors.brown;
    }
    return Container(
      width: 115,
      height: 50,
      decoration: BoxDecoration(
        border: borderColor, // Setting border color to brown

        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 75, 53, 46),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 18,
              color: color,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              '$price',
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 17, color: color),
            )
          ],
        ),
      ),
    );
  }
}

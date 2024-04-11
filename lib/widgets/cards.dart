import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.url,
      required this.heading,
      required this.description,
      required this.price,
      this.icon = Icons.archive_outlined});

  final String url;
  final String heading;
  final String description;
  final double price;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 60, 42, 36),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Image(
              // image: NetworkImage(url),
              image: AssetImage('assets/images/coffeeCup.webp'),
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
            height: 100,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                heading,
                textDirection: TextDirection.ltr,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 15,),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      description,
                      textDirection: TextDirection.ltr,
                      style: const TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\$$price',
                      textDirection: TextDirection.ltr,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),

                const SizedBox(width: 20,),
                Container(
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.brown,
                  ),
                  child: IconButton(onPressed: (){}, icon: Icon(icon,size: 25,color: Colors.white))
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

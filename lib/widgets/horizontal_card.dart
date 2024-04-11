import 'package:flutter/material.dart';

class Horizontal_card extends StatelessWidget {
  const Horizontal_card({
    super.key,
    required this.url,
    required this.heading,
    required this.description,
    required this.price,
  });

  final String url;
  final String heading;
  final String description;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.fromLTRB(0, 15, 2, 0),
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 60, 42, 36),
      ),
      child: Row(
        
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                // image: AssetImage('assets/images/pexels-chevanon-photography-312418.jpg'),
                image: NetworkImage(url),
                width: 120,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            width: 260,
            padding: const EdgeInsets.fromLTRB(0, 10, 5, 10),
            // color: Colors.pink,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      heading,
                      textDirection: TextDirection.ltr,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),
                    ),
                    // const SizedBox(height: 10,),
                    Text(
                      description,
                      textDirection: TextDirection.ltr,
                      style: const TextStyle(
                        fontWeight: FontWeight.w300, fontSize: 14,color: Colors.white),
                    ),
                  ],
                ),
                Text(
                  '\$$price',
                  textDirection: TextDirection.ltr,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16,color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

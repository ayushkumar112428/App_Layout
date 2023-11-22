// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ZomatoApp extends StatelessWidget {
  ZomatoApp({super.key});

  // Define a list of items
  final List<Map<String, dynamic>> foodItems = [
    {
      'name': 'Pizza Center',
      'imagePath': 'assets/zomato/pizza01.jpg',
      'discount': '20% OFF',
      'rating': '4.0',
      'category': 'Pizza',
      'cost': '₹250 for one',
      'minAmount': 'Min ₹250 • Avg 45 min • Pay Online/Cash',
      'offer': '20% off - auto applies during checkout',
    },
    {
      'name': 'Burger Farm',
      'imagePath': 'assets/zomato/burger01.jpg',
      'discount': '50% OFF',
      'rating': '3.9',
      'category': 'Burger',
      'cost': '₹150 for one',
      'minAmount': 'Min ₹150 • Avg 45 min • Pay Online/Cash',
      'offer': '50% off - auto applies during checkout',
    },
    {
      'name': 'Neelam Sandwich & Pizza',
      'imagePath': 'assets/zomato/sandwich03.jpg',
      'discount': '30% OFF',
      'rating': '4.2',
      'category': 'Sandwich',
      'cost': '₹150 for one',
      'minAmount': 'Min ₹150 • Avg 45 min • Pay Online/Cash',
      'offer': '20% off - auto applies during checkout',
    },
    {
      'name': 'Bliss Kitchen By Akhil Soni',
      'imagePath': 'assets/zomato/thali04.jpg',
      'discount': '50% OFF',
      'rating': '3.9',
      'category': 'Thali',
      'cost': '₹200 for one',
      'minAmount': 'Min ₹200 • Avg 45 min • Pay Online/Cash',
      'offer': '50% off - auto applies during checkout',
    },
    {
      'name': 'New Freeze Land',
      'imagePath': 'assets/zomato/sandwich05.jpg',
      'discount': '20% OFF',
      'rating': '4.3',
      'category': 'Sandwich',
      'cost': '₹150 for one',
      'minAmount': 'Min ₹150 • Avg 45 min • Pay Online/Cash',
      'offer': '20% off - auto applies during checkout',
    },
    {
      'name': 'Pizza Center',
      'imagePath': 'assets/zomato/pizza01.jpg',
      'discount': '20% OFF',
      'rating': '4.0',
      'category': 'Pizza',
      'cost': '₹250 for one',
      'minAmount': 'Min ₹250 • Avg 45 min • Pay Online/Cash',
      'offer': '20% off - auto applies during checkout',
    },
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    double wsize = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 230, 230),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Center(
          child: Text(
            "Zomato",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
          ),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: foodItems.length,
        itemBuilder: (BuildContext context, int index) {
          return buildFoodItemCard(foodItems[index],wsize);
        },
      ),
    );
  }

  Widget buildFoodItemCard(Map<String, dynamic> foodItem,double wsize) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3,top: 5),
      child: Container(
        height: 130,
        width: wsize,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 120,
                width: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(foodItem['imagePath']),
                  ),
                ),
                child: Container(
                  height: 20,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Text(foodItem['discount'], style: const TextStyle(color: Colors.white, backgroundColor: Colors.green)),
                  ),
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Expanded(
                // padding: const EdgeInsets.only(left: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(foodItem['name'], style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                        // const SizedBox(width: 5),
                        Container(
                          height: 27,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(child: Text(foodItem['rating'], style: const TextStyle(color: Colors.white, fontSize: 16))),
                        ),
                      ],
                    ),
                    Text(foodItem['category'], style: const TextStyle(color: Colors.grey, fontSize: 15)),
                    Text(foodItem['cost'], style: const TextStyle(color: Colors.grey, fontSize: 15)),
                    Text(foodItem['minAmount'],style: const TextStyle(fontSize: 12)),
                    Text(foodItem['offer'], style: const TextStyle(color: Colors.green, fontWeight: FontWeight.w500,fontSize: 14)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// class ZomatoApp extends StatelessWidget {
//   const ZomatoApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 235, 230, 230),
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         title: const Center(
//           child: Text("Zomato",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28),),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 7),
//           child: Column(
//             children: [
//               Container(
//                 height: 130,
//                 width: MediaQuery.of(context).size.width,
//                 color: Colors.white,
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 7),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Container(
//                         height: 120,
//                         width: 115,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(7),
//                           image: const DecorationImage(
//                             fit: BoxFit.cover,
//                             image: AssetImage("assets/zomato/pizza01.jpg",),
//                           ),
//                         ),
//                         child: Container(
//                           height: 20,
//                           width: 40,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                           ),
//                           child: const Padding(
//                             padding: EdgeInsets.all(7.0),
//                             child: Text(" 20% OFF ",style: TextStyle(color: Colors.white,backgroundColor: Colors.green),),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 7),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 const Text("Pizza Center",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
//                                 const SizedBox(width: 105,),
//                                 Container(
//                                   height: 27,
//                                   width: 35,
//                                   decoration: BoxDecoration(
//                                     color: Colors.green,
//                                     borderRadius: BorderRadius.circular(5),
//                                   ),
//                                   child: const Center(child: Text("4.0",style: TextStyle(color: Colors.white,fontSize: 16),)),
//                                 ),
//                               ],
//                             ),
//                             const Text("Pizza",style: TextStyle(color: Colors.grey,fontSize: 15),),
//                             const Text("Cost ₹250 for one",style: TextStyle(color: Colors.grey,fontSize: 15),),
//                             const Text("Min ₹250 • Avg 45 min • Pay Online/Cash",),
//                             const Text("20% off - auto applies during checkout",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w500),),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
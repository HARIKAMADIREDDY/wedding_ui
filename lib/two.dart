import 'package:flutter/material.dart';
import 'custom_widget.dart';

class FoodSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {},
              ),
              title: Text(
                "South Indian Breakfast",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              actions: [
                Icon(Icons.edit, color: Colors.black),
                SizedBox(width: 16),
              ],
            ),
            Divider(color: Colors.black26, thickness: 1, height: 1),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildCategoryTab(
                            "Starters",
                            "2/2",
                            true,
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrBplmiSU-XsQwKlqHQhnWoqWO2RjZj_IhDYEuHRJnZj3pktPKPDQJtQocRTmB1umUrMk&usqp=CAU",
                          ),
                          SizedBox(height: 40),
                          _buildCategoryTab(
                            "Mains",
                            "2/2",
                            true,
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsZy1Ui7rAFtgmy3G388yzTesV2LDTLMCZ2i7M-8FoLftou2hnklljK90z_60Cg0omTj4&usqp=CAU",
                          ),
                          SizedBox(height: 40),
                          _buildCategoryTab(
                            "Sweets",
                            "0/1",
                            true,
                            "https://images.news18.com/static-bengali/uploads/2024/06/96538885-2024-06-0317bdd1985e71c6ecfdaab4bdfb780a.jpg?impolicy=website&width=450&height=500",
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                         const  Row(
                            children: [
                          Text('Pure Veg',
                          style: TextStyle(color: Colors.green),),
                          SizedBox(width: 100,),
                          Text('Non Veg',
                          style: TextStyle(color: Colors.red),),]),
                          _buildFoodRow(context, [
                            {
                              "imageUrl": "https://rukminim2.flixcart.com/image/850/1000/xif0q/sticker/e/y/j/medium-pcs216-1-8-pcs216-sticker-mart-original-imahyhwyn8tgdg8c.jpeg?q=90&crop=false",
                              "title": "Idly Sambar",
                            },
                            {
                              "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTqoMlGa9_NcbNgNdXPGJ0ifzW90rTcK8vfMaAQStzfsv0w0IfSvaq6wN1eZk-t1mLtLo&usqp=CAU",
                              "title": "Appam",
                            },
                          ]),
                          SizedBox(height: 16),
                          _buildFoodRow(context, [
                            {
                              "imageUrl": "https://b.zmtcdn.com/data/pictures/1/19339871/31e8f71ac98c810f5399258266f119d5_featured_v2.jpg",
                              "title": "Dosa",
                            },
                            {
                              "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSz9FXfvJNFJ2xmg5US_tqyQtWRIOEZ76dqUCVuDKh6G4b9KynkrYJb428SEixtfkzFu90&usqp=CAU",
                              "title": "Wada",
                            },
                          ]),
                           SizedBox(height: 16),
                          _buildFoodRow(context, [
                            {
                              "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYg2wkQNZ0und3qDGHx3ARAoke5xasK6klvrMD5bq582laT7SeA0V4J6jLjqHZisuQVyQ&usqp=CAU",
                              "title": "Pongal",
                            },
                            {
                              "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV_RMS0YGkdWDDZ5SHsm2ET5-gLkE6_5L-nvbyRRf-YwRgazrZiwIiwLdbP8IZQL_TpqE&usqp=CAU",
                              "title": "Bonda",
                            },
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('To Pay', style: TextStyle(color: Colors.black26)),
                   Row(children: [
                    Text(
                      '₹240/',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                      Text(
                      'plate',
                      style: TextStyle(color: Colors.black26, fontSize: 20),
                    ),
                   ],
                   )
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                  child:const  Text(
                    'Fill Details',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryTab(String title, String count, bool isSelected, String imageUrl) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 16),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.grey[800],
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Image.network(
              imageUrl,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.cumulativeBytesLoaded /
                        (loadingProgress.expectedTotalBytes ?? 1),
                  ),
                );
              },
            ),
          ),
        ),
       const  SizedBox(height: 8),
        Text(
          title,
          style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(
          count,
          style: const TextStyle(color: Colors.black54, fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildFoodRow(BuildContext context, List<Map<String, String>> items) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: items.map((item) {
        return Expanded(
          child: FoodCard(
            imageUrl: item['imageUrl']!,
            title: item['title']!,
            onButtonPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${item['title']} Added')),
              );
            },
          ),
        );
      }).toList(),
    );
  }
}

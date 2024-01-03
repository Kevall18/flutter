import 'package:flutter/material.dart';

class GridBuilderr extends StatelessWidget {
  const GridBuilderr({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'Apple',
      'Ball',
      'Cat',
      'Dog',
      'Elephant',
      'Frog',
      'Gun',
      'Hero',
      'India',
      'Joker',
      'Kite',
      "Limbu"
    ];
    final List<String> imagedata = <String>[
      'https://media.istockphoto.com/id/495878092/photo/red-apple.jpg?s=612x612&w=0&k=20&c=M2ndFI1v2erJM18q1Cd1QCM8jqBlRKLc1nLE9BNp-EY=',
      'https://t3.ftcdn.net/jpg/02/11/11/44/360_F_211114404_Etx3B5GYpJG9THGkLw22okquzxEYjA8o.jpg',
      'https://t4.ftcdn.net/jpg/00/97/58/97/360_F_97589769_t45CqXyzjz0KXwoBZT9PRaWGHRk5hQqQ.jpg',
      'https://mymodernmet.com/wp/wp-content/uploads/2020/10/cooper-baby-corgi-dogs-8.jpg',
      'https://images.herzindagi.info/image/2020/Oct/anant-ambani-fat-fit-main.jpg',
      'https://media.istockphoto.com/id/175397603/photo/frog.jpg?s=612x612&w=0&k=20&c=EMXlwg5SicJllr7gnSFUUjzwCGa1ciLjYD1bk8NvO2E=',
      'https://c0.klipartz.com/pngpicture/63/1000/gratis-png-pistola-de-mano.png',
      'https://cdn1.vectorstock.com/i/1000x1000/12/50/super-hero-boy-posing-vector-5581250.jpg',
      'https://t4.ftcdn.net/jpg/01/14/62/33/360_F_114623372_ZUIjiBqg3GGiTkkvFzAk4GJ0zpqliJE7.jpg',
      'https://m.media-amazon.com/images/M/MV5BMGQ1ZGZmNTAtM2MyYi00NmZhLTkwYmYtNTNlZDRhMzU2ZTgwXkEyXkFqcGdeQW1yb3NzZXI@._V1_QL75_UX500_CR0,0,500,281_.jpg',
      'https://static.vecteezy.com/system/resources/previews/003/621/215/original/kite-from-multicolored-paints-splash-of-watercolor-colored-drawing-realistic-illustration-of-paints-vector.jpg',
      'https://www.starhealth.in/blog/wp-content/uploads/2022/12/cropped-01-4.jpg'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Builder"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15),
          padding: EdgeInsets.all(10),
          itemCount: entries.length,
          itemBuilder: (context, index) {
            return Material(
              elevation: 10,
              borderRadius:BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green[100]),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      imagedata[index],
                      height: 130,
                      width: 130,
                    ),
                    Text(
                      entries[index],
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

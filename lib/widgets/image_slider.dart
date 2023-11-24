import 'package:card_swiper/card_swiper.dart';
import 'package:doc_seeker_app/screens/noticias.dart';
import 'package:flutter/material.dart';
//import 'package:dockseekerapp/screens/noticias.dart';

List imageList = [
  'https://i.ibb.co/NrqGNX0/dms.jpg',
  'https://i.ibb.co/ss8c2MB/city.png',
  'https://i.ibb.co/BNgHQcW/slider-image.jpg',
];

class ImageSlider extends StatelessWidget {
  const ImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      width: double.infinity,
      child: Swiper(
        autoplay: true,
        itemCount: imageList.length,
        pagination: const SwiperPagination(
          builder: DotSwiperPaginationBuilder(
            activeColor: Colors.grey,
            color: Colors.white,
          ),
        ),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NoticiasScreen()));
          },
          child: Image.network(
            imageList[index],
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

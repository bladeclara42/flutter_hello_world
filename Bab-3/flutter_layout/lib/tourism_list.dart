import 'package:flutter/material.dart';
import 'package:flutter_layout/model/tourism_place.dart';
import 'package:flutter_layout/detail_screen.dart';
import 'package:flutter_layout/list_item.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Satriamandala Museum',
      location: 'Jl. Gatot Subroto',
      time: '08.00 - 16.00',
      open: 'Open Everyday',
      price: 'Rp 10.000,-',
      description:
          'The Satriamandala Museum (also spelled Satria Mandala Museum) is the main museum for the Indonesian Armed Forces. Opened on 5 October 1972, it is located on 5.6 hectares (14 acres) of land in South Jakarta and holds numerous artefacts, weapons, and vehicles.',
      imageAsset: 'assets/images/Satriamandala_Museum/DepanMuseum.jpg',
      galleryImageAsset1:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Plaza_Satriamandala.05.jpg/1280px-Plaza_Satriamandala.05.jpg',
      galleryImageAsset2:
          'assets/images/Satriamandala_Museum/1280px-Artillery,_Satriamandala_Museum.jpg',
      galleryImageAsset3:
          'assets/images/Satriamandala_Museum/1280px-Hall_of_Heroes,_Satriamandala_Museum.jpg',
      galleryImageAsset4:
          'assets/images/Satriamandala_Museum/Matjan_Tutul_(replica),_Satriamandala_Museum.jpg',
    ),
    TourismPlace(
      name: 'PKI Betrayal Museum',
      location: 'Jl. Raya Pondok Gede',
      time: '12.00 - 20.00',
      open: 'Open Thusday - Sunday',
      price: 'Rp 2.500,-',
      description:
          'The Museum of PKI Treason and a monument that was erected to honour the fallen generals.',
      imageAsset:
          'assets/images/PKI_Betrayal_Museum/menengok-museum-pengkhianatan-pki-sarat-sejarah-peristiwa-g30s-25VqhBG3pL.jpg',
      galleryImageAsset1:
          'https://cdn2.tstatic.net/tribunnewswiki/foto/bank/images/Museum-Pengkhianatan-PKI-Komunis-4.jpg',
      galleryImageAsset2:
          'assets/images/PKI_Betrayal_Museum/sejumlah-diorama-menggambarkan-kekejaman-pki_20180929_195731.jpg',
      galleryImageAsset3:
          'assets/images/PKI_Betrayal_Museum/melihat-kekejaman-pki-aniaya-pahlawan-revolusi-lewat-diorama-2_169.jpeg',
      galleryImageAsset4:
          'assets/images/PKI_Betrayal_Museum/Museum-Pengkhianatan-PKI-Komunis-2.jpg',
    ),
    TourismPlace(
      name: 'Yogya Kembali Monument',
      location: 'Jl. Ring Road Utara, Kec. Ngaglik',
      time: '08.00 - 17.00',
      open: 'Open Everyday',
      price: 'Rp 15.000,-',
      description:
          'TMonumen Yogya Kembali (Monument to the Recapture of Yogyakarta), known colloquially as Monjali, is a pyramid-shaped museum dedicated to the Indonesian National Revolution located in the Ngaglik sub-district, Sleman, Special Region of Yogyakarta, Indonesia.',
      imageAsset:
          'assets/images/Yogya_Kembali_Monument/800px-Monumen_Jogja_Kembali_panorama.jpg',
      galleryImageAsset1:
          'https://i0.wp.com/ratunyatravel.com/wp-content/uploads/2021/12/outing-class-monumen-jogja-kembali.jpg?fit=1024%2C682&ssl=1&resize=1280%2C720',
      galleryImageAsset2:
          'assets/images/Yogya_Kembali_Monument/Monjali_02-1024x576.jpg',
      galleryImageAsset3:
          'assets/images/Yogya_Kembali_Monument/Monjali_07-1024x461.jpg',
      galleryImageAsset4:
          'assets/images/Yogya_Kembali_Monument/Monjali_10-1024x461.jpg',
    ),
    TourismPlace(
      name: 'Affandi Museum',
      location: '	Depok, Sleman Regency',
      time: '10.00 - 20.00',
      open: 'Open Tuesday - Sunday',
      price: 'Free',
      description:
          'The Affandi Museum is a museum that the painter Affandi designed and constructed a home for himself which also functions as a museum to display his paintings, inaugurated on 15 December 1973.',
      imageAsset: 'assets/images/Affandi_Museum/1280px-Museum_Affandi.jpeg',
      galleryImageAsset1:
          'https://genpijogja.com/wp-content/uploads/2018/08/IMG-20160624-WA0020.jpg',
      galleryImageAsset2: 'assets/images/Affandi_Museum/maxresdefault.jpg',
      galleryImageAsset3: 'assets/images/Affandi_Museum/Jess-Dubie.jpg',
      galleryImageAsset4: 'assets/images/Affandi_Museum/museum-affandi.jpeg',
    ),
    TourismPlace(
      name: 'Fort Vredeburg Museum',
      location: '	Jalan Ahmad Yani No. 6, Yogyakarta',
      time: '08.00 - 16.00',
      open: 'Open Tuesday - Sunday',
      price: 'Rp 3.000,-',
      description:
          'Fort Vredeburg Museum was a former colonial fortress located in the city of Yogyakarta, Special Region of Yogyakarta, Indonesia. The military complex has been converted into a museum of the Indonesian independence struggle which was opened in 1992.',
      imageAsset: 'assets/images/Fort_Vredeburg_Museum/Fort_Vredeburg_1.jpg',
      galleryImageAsset1:
          'https://2.bp.blogspot.com/-lsBlgtmk8qE/VLE5CStxloI/AAAAAAAAAws/jNbn02wlxiQ/s1600/DSCN5138_1_wm.jpg',
      galleryImageAsset2:
          'assets/images/Fort_Vredeburg_Museum/fortvredeburgmuseum8-1024x683.jpg',
      galleryImageAsset3:
          'assets/images/Fort_Vredeburg_Museum/kitlv-103220-cephas-street-behind-fort-vredeburg-in-yogyakarta-around-1890-291b05-1024.jpg',
      galleryImageAsset4:
          'assets/images/Fort_Vredeburg_Museum/49157280783_5b7f6110a8_b.jpg',
    ),
    TourismPlace(
      name: 'National Museum-Preserve "Battle for Kyiv 1943"',
      location: '	Novi Petrivtsi, Ukraine',
      time: '10.00 - 15.00',
      open: 'Open Monday - Friday',
      price: 'Rp  50.000,-',
      description:
          'The National Museum-Preserve "Battle for Kyiv 1943", is a museum dedicated to the Kyiv Strategic Offensive Operation of autumn 1943. The museum hosts a number of ceremonies to honor the memory of the heroes of the Battle of the Dnieper, and various other events related to its mission.',
      imageAsset: 'assets/images/National_Museum_Battle_Kyiv_1943/museum_1.jpg',
      galleryImageAsset1:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/%D0%9C%D1%83%D0%B7%D0%B5%D0%B9_%D0%91%D0%B8%D1%82%D0%B2%D0%B0_%D0%B7%D0%B0_%D0%9A%D0%B8%D0%B5%D0%B2_3.jpg/800px-%D0%9C%D1%83%D0%B7%D0%B5%D0%B9_%D0%91%D0%B8%D1%82%D0%B2%D0%B0_%D0%B7%D0%B0_%D0%9A%D0%B8%D0%B5%D0%B2_3.jpg',
      galleryImageAsset2:
          'assets/images/National_Museum_Battle_Kyiv_1943/T34.jpeg',
      galleryImageAsset3:
          'assets/images/National_Museum_Battle_Kyiv_1943/cityscape_696_c-100.jpg',
      galleryImageAsset4:
          'assets/images/National_Museum_Battle_Kyiv_1943/2839546.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }),
            );
          },
          child: ListItem(
            place: place,
            isDone: false,
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}

// final List<TourismPlace> _doneTourismPlaceList = [];

//   List<TourismPlace> get doneTourismPlaceList => _doneTourismPlaceList;

//   void complete(TourismPlace place, bool isDone) {
//     isDone
//         ? _doneTourismPlaceList.add(place)
//         : _doneTourismPlaceList.remove(place);
//     notifyListeners();
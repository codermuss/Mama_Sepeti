import 'package:flutter/material.dart';

class GonderiKarti extends StatelessWidget {
  String resimYolu;
  String ad;
  String soyad;
  String aciklama;
  GonderiKarti(
      {@required this.ad,
      @required this.soyad,
      @required this.resimYolu,
      @required this.aciklama});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        borderRadius: BorderRadius.circular(15.0),
        elevation: 1.0,
        child: Container(
          padding: EdgeInsets.all(12.0),
          width: double.infinity,
          height: 340.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(30.0),
                          color: Colors.indigo,
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2017/02/04/12/25/man-2037255__340.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ad + " " + soyad,
                            style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            "1 saat önce",
                            style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                aciklama,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  resimYolu,
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    size: 25.0,
                    color: Colors.black,
                  ),
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class RotatingImageScreen extends StatelessWidget {
  final List<String> imagePaths = [
    "assets/images/slider1.png",
    "assets/images/slider2.jpeg",
    "assets/images/slider3.png",
    // Diğer görsel dosya yollarını buraya ekleyin
  ];

  final List<List<String>> imageDescriptions = [
    [
      "•Doğranmış ve yıkanmış meyve sebzelerin pişireceğiniz yemek için uygun ölçüde size ulaşmasını sağlar. Böylece israfın ve zahmetin önüne geçebilirsiniz."
    ],
    ["•İhtiyaç duyduğunuz meyve ve sebzeleri seçin."],
    [
      "•Ödemenizi tamamlayın.",
      "•Seçtiğiniz ürünler özenle doğranıp yıkanarak size ulaştırılır.",
      "•Artık meyve ve sebzeleri doğrama ve yıkama zahmetiyle uğraşmadan kullanabilirsiniz!"
    ],
    // Diğer görseller için açıklamaları buraya ekleyin
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(
          255, 170, 200, 167), // Arka plan rengini burada belirleyin
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 16 / 9,
            enlargeCenterPage: true,
          ),
          items: imagePaths.asMap().entries.map((entry) {
            int index = entry.key;
            String path = entry.value;
            List<String> descriptionItems = imageDescriptions[index];
            return Builder(
              builder: (BuildContext context) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Image.asset(
                          path,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Spacer(),
                    // Sipariş ver butonu
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(1500),
                      ),
                          padding: const EdgeInsets.all(10),
                       child: Text(
                         "Sipariş Ver",
                         style: TextStyle(color: Colors.white),
                       )
                    ),
                    const Spacer(),
                    SizedBox(height: 1), // Görsel ve metin arasındaki boşluk
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: descriptionItems.map((item) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Text(
                            item,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
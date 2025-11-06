import 'package:flutter/material.dart';
import 'package:tugas5praktikum/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar produk campuran modern (gambar online)
    final List<Map<String, dynamic>> products = [
      {
        "title": "Smartphone Google Pixel 8 Pro",
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfsxaK1Jk54-BFPV8CGp9RMXvYvC6SsJZURQ&s",
        "description":
            "Google Pixel 8 Pro hadir dengan layar OLED 6.7 inci QHD+ dan refresh rate 120Hz. "
            "Ditenagai prosesor Tensor G3 buatan Google, ponsel ini menawarkan pengalaman Android murni dengan pembaruan hingga 7 tahun. "
            "Kamera utama 50MP dengan dukungan AI menghasilkan foto natural dan detail. "
            "Baterai 5050mAh mendukung pengisian cepat dan fitur keamanan Titan M2."
      },
      {
        "title": "Laptop ASUS Zenbook 14 OLED",
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSp6WRWgmdIhV1V9NqezTdBDv5eUJvo8D6yg&s",
        "description":
            "ASUS Zenbook 14 OLED menampilkan layar OLED 2.8K 14 inci dengan warna tajam dan akurat. "
            "Ditenagai Intel Core i7 generasi ke-13, RAM 16GB, dan SSD 1TB, cocok untuk kerja profesional dan multitasking berat. "
            "Desainnya ringan hanya 1.3kg dan baterainya tahan hingga 15 jam penggunaan."
      },
      {
        "title": "Headphone Sony WH-1000XM5",
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2MQo3bpCPTZlTDRieALPCMDo4NU-YwOANQw&s",
        "description":
            "Sony WH-1000XM5 adalah headphone nirkabel dengan teknologi noise cancelling terbaik di kelasnya. "
            "Dilengkapi 8 mikrofon dan prosesor V1, menghasilkan kualitas audio jernih dan bass seimbang. "
            "Baterai tahan hingga 30 jam dengan pengisian cepat 3 menit untuk 3 jam pemakaian."
      },
      {
        "title": "Smartwatch Samsung Galaxy Watch 6",
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTORhweW6fYYLoUNa-Uo4hrL9O4ANJ-KBknKQ&s",
        "description":
            "Galaxy Watch 6 dilengkapi layar Super AMOLED 1.5 inci dengan desain tipis. "
            "Mendukung pelacakan kesehatan seperti tekanan darah, EKG, dan pemantauan tidur. "
            "Menggunakan sistem operasi Wear OS dengan integrasi penuh bersama ekosistem Galaxy."
      },
      {
        "title": "Kamera Canon EOS R50",
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5x0RjMazkFElRcdEKw749pfqtjWuMmpo6iw&s",
        "description":
            "Canon EOS R50 adalah kamera mirrorless ringkas dengan sensor APS-C 24.2MP. "
            "Mendukung perekaman video 4K 30fps tanpa crop dan sistem Dual Pixel AF II untuk fokus cepat dan akurat. "
            "Cocok untuk vlogger dan fotografer pemula dengan desain ringan serta Wi-Fi & Bluetooth terintegrasi."
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Produk Kami",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            elevation: 3,
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  products[index]["image"],
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                products[index]["title"],
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      productTitle: products[index]["title"],
                      productImage: products[index]["image"],
                      productDescription: products[index]["description"],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
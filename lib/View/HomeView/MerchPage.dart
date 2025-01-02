import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MerchandisePage extends StatefulWidget {
  @override
  _MerchandisePageState createState() => _MerchandisePageState();
}

class _MerchandisePageState extends State<MerchandisePage> {
  // Data for merchandise items
  final List<Map<String, dynamic>> merchandiseItems = [
    {
      'title': 'Merch Week Die First 1',
      'price': 'Rp. 150.000',
      'image': Image.asset('assets/jualan1.jpg'),
      'imageUrl':
          'https://drive.google.com/file/d/1RDUan0VxY6uSSw6ilAA2r3j3jYg8s0dY/view?usp=sharing',
      'qty': 0,
      'description': 'Deskripsi singkat produk 1.',
      'size': 'L, XL, XXL',
      'eventType': 'WDF',
    },
    {
      'title': 'Merch Week Die First 2',
      'price': 'SOLD OUT',
      'image': Image.asset("assets/jualan2.jpg"),
      'imageUrl':
          'https://drive.google.com/file/d/1-mcsIegoUtyEZQcW9R-bKuLxslFAu0u8/view?usp=sharing',
      'qty': 0,
      'description': 'Deskripsi singkat produk 2.',
      'size': 'M, L, XL',
      'eventType': 'WDF',
    },
  ];

  // Function to launch WhatsApp with static message
  Future<void> _launchWhatsApp(
      String itemTitle, String imageUrl, String qty) async {
    if (qty == '0') {
      // Show a dialog if qty is 0
      _showQtyErrorDialog();
    } else {
      final String message =
          "Halo Admin Ganteng..\n$qty biji $itemTitle⛓️.\nHasil Gambar produk:\n$imageUrl makaciwwww❤️";
      final Uri url = Uri.parse(
          'https://wa.me/6281359053537?text=${Uri.encodeComponent(message)}');
      if (await canLaunchUrl(url)) {
        await launchUrl(
          url,
          mode: LaunchMode.externalApplication,
        );
      } else {
        throw 'Could not launch $url';
      }
    }
  }

  // Function to show a dialog when qty is 0
  void _showQtyErrorDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Peringatan'),
          content: const Text('Harap mengisi jumlah produk terlebih dahulu.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Tutup'),
            ),
          ],
        );
      },
    );
  }

  // Function to show product details in a dialog
  void _showProductDetails(Map<String, dynamic> item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.grey[850],
          title: Text(
            item['title'],
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item['description'],
                style: TextStyle(color: Colors.grey[300]),
              ),
              const SizedBox(height: 8),
              Text(
                'Ukuran: ${item['size']}',
                style: TextStyle(color: Colors.grey[300]),
              ),
              const SizedBox(height: 4),
              Text(
                'Tipe Acara: ${item['eventType']}',
                style: TextStyle(color: Colors.grey[300]),
              ),
            ],
          ),
          actions: [
            TextButton(
              child: const Text('Close', style: TextStyle(color: Colors.blue)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 22, 22, 22),
        title: const Text('Merchandise', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Container(
        color: const Color.fromARGB(255, 22, 22, 22),
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: merchandiseItems.length,
          itemBuilder: (context, index) {
            var item = merchandiseItems[index];
            return Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Display image for each item
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: item['image'],
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['title'],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          item['price'],
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[400],
                          ),
                        ),
                        const SizedBox(height: 8),
                        // Row for Buy button and Qty control
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Buy Button
                            ElevatedButton(
                              onPressed: () => _launchWhatsApp(
                                item['title'], // judul item
                                item['imageUrl'], // imageUrl produk
                                item['qty']
                                    .toString(), // qty harus diubah menjadi String
                              ),
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 16),
                              ),
                              child: const Text(
                                'Buy',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),

                            // Qty control
                            Row(
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.remove,
                                      color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      if (item['qty'] > 1) item['qty']--;
                                    });
                                  },
                                ),
                                Text(
                                  '${item['qty']}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.add,
                                      color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      item['qty']++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert, color: Colors.grey[400]),
                    onPressed: () => _showProductDetails(item),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

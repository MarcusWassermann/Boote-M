import 'package:flutter/material.dart';

class ImageUploadWidget extends StatelessWidget {
  const ImageUploadWidget({super.key});

  void _uploadImages(BuildContext context) {
    // Logik zum Hochladen der Bilder hier implementieren
    // Beispiel: Navigator.push(context, MaterialPageRoute(builder: (context) => ImageUploadScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2.0),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Bilder hochladen:',
            style: TextStyle(fontSize: 12.0),
          ),
          ElevatedButton(
            onPressed: () {
              _uploadImages(context);
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.cloud_upload),
                SizedBox(width: 8.0),
                Text('Bilder hochladen'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


import 'package:boote_m/widgets/boat_data_field_list.dart';
import 'package:boote_m/widgets/image_upload.dart';
import 'package:flutter/material.dart';
import 'payment_screen.dart';

class PostAdScreen extends StatefulWidget {
  const PostAdScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PostAdScreenState createState() => _PostAdScreenState();
}

class _PostAdScreenState extends State<PostAdScreen> {
  final TextEditingController _adTextController = TextEditingController();
  bool _isCommercial = false;
  bool _isPrivate = false;
  final List<String> boatData = List<String>.filled(10, '');

  void _postAd(String adText, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PaymentScreen(adPrice: 1.99),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Image(
            image: AssetImage('assets/logo-transparent-png.png'),
            height: 50,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '',
                style: TextStyle(fontSize: 18.0),
              ),
              const SizedBox(height: 10.0),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2.0),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: TextField(
                  controller: _adTextController,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Geben Sie hier Ihre Anzeige ein',
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              const Text('Bootsdaten:', style: TextStyle(fontSize: 18.0)),
              const BoatDataFieldsList(),
              const SizedBox(height: 8.0),
              const Text('Anbieterart:', style: TextStyle(fontSize: 18.0)),
              Row(
                children: [
                  Checkbox(
                    value: _isCommercial,
                    onChanged: (value) {
                      setState(() {
                        _isCommercial = value ?? false;
                        _isPrivate = !value!;
                      });
                    },
                  ),
                  const Text('Gewerblicher Anbieter'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isPrivate,
                    onChanged: (value) {
                      setState(() {
                        _isPrivate = value ?? false;
                        _isCommercial = !value!;
                      });
                    },
                  ),
                  const Text('Privat'),
                ],
              ),
              const SizedBox(height: 20.0),
              const ImageUploadWidget(),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  String adText = _adTextController.text;
                  _postAd(adText, context);
                },
                child: const Text('Anzeige aufgeben'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

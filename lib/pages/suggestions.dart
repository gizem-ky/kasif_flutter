import 'package:flutter/material.dart';

class SuggestionsPage extends StatefulWidget {
  @override
  _SuggestionsPageState createState() => _SuggestionsPageState();
}

class _SuggestionsPageState extends State<SuggestionsPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _placeName = '';
  String _address = '';
  String _city = '';
  String _district = '';
  String _description = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Form doğrulandıysa burada işlemler yapılabilir
      // Örneğin, verileri bir API'ye gönderme
      print('Form gönderildi!');
      print('Yer Adı: $_placeName');
      print('Adres: $_address');
      print('Şehir: $_city');
      print('İlçe: $_district');
      print('Açıklama: $_description');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(67.0),
          child: Text('Öneriler'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Yer Adı',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen bir yer adı girin';
                  }
                  return null;
                },
                onSaved: (value) {
                  _placeName = value!;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Adres',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen bir adres girin';
                  }
                  return null;
                },
                onSaved: (value) {
                  _address = value!;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Şehir',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen bir şehir girin';
                  }
                  return null;
                },
                onSaved: (value) {
                  _city = value!;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'İlçe',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen bir ilçe girin';
                  }
                  return null;
                },
                onSaved: (value) {
                  _district = value!;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                maxLines: 3, // Multiple lines for description
                decoration: InputDecoration(
                  labelText: 'Açıklama',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen bir açıklama girin';
                  }
                  return null;
                },
                onSaved: (value) {
                  _description = value!;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Text('Gönder'),
                ),
              ),
            ],
          ),
        ),
     ),
    );
  }
}
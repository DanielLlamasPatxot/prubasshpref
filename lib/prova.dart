import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProvaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prueba de Shattered'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hola compi, dale al botón de abajo para escribir en el shatter',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.setString('token', 'Dani');
              },
              child: Text('Escribir en el shatter'),
            ),
            ElevatedButton(
                onPressed: () async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  var resp = prefs.getString('token');
                  if (resp!.isNotEmpty) {
                    print(resp);
                  }
                },
                child: Text('Ver mi token'))
          ],
        ),
      ),
    );
  }
}

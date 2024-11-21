import 'package:flutter/material.dart';

class AdministrarAcceso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Administrar acceso'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Alinea botones en el centro
          children: [
            ElevatedButton(
              onPressed: () {
                // Lógica para agregar un usuario
              },
              child: Text('Agregar usuario'),
            ),
            SizedBox(height: 10), // Espaciado entre los botones
            ElevatedButton(
              onPressed: () {
                // Lógica para consultar usuarios
              },
              child: Text('Consultar usuarios'),
            ),
            SizedBox(height: 10), // Espaciado entre los botones
            ElevatedButton(
              onPressed: () {
                // Lógica para eliminar un usuario
              },
              child: Text('Eliminar usuario'),
            ),
          ],
        ),
      ),
    );
  }
}

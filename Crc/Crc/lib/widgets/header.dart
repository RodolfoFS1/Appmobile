import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final bool isLoggedIn;
  final VoidCallback onLogout;

  const Header({
    Key? key,
    required this.isLoggedIn,
    required this.onLogout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: [
          Container(
            height: 120, // Ajusta la altura según tus necesidades
            width: 120, // Ajusta el ancho según tus necesidades
            margin: EdgeInsets.only(right: 10), // Margen para separar del texto
            decoration: BoxDecoration(
              shape: BoxShape.rectangle, // Opcional: hacer que sea circular
            ),
            child: Image.asset(
              'assets/logo.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Spacer(),
          if (isLoggedIn)
            GestureDetector(
              onTap: onLogout,
              child: Column(
                children: [
                  Icon(Icons.account_circle, size: 45, color: Colors.white),
                  Text(
                    'Logout',
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                ],
              ),
            ),
        ],
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0192C8), Color(0xFF14296C)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}

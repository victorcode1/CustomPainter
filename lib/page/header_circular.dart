import 'package:flutter/material.dart';

class HeaderDiagonal extends StatefulWidget {
  const HeaderDiagonal({super.key});

  @override
  State<HeaderDiagonal> createState() => _HeaderDiagonalState();
}

class _HeaderDiagonalState extends State<HeaderDiagonal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff615AAB),
        title: const Text('Header Diagonal'),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
            painter: _HeaderDiagonalPainter(),
            child: const Center(
              child: Text(
                'Header Diagonal',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            )),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    // Propiedades
    lapiz.color = const Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; // .fill .stroke
    lapiz.strokeWidth = 20;

    final path = Path();

    // Dibujar con el path y el lapiz
    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

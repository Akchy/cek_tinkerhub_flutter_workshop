import 'package:flutter/material.dart';

class ProfilePicPage extends StatelessWidget {
  const ProfilePicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    'images/tree.jpg'
                ),
              ),
              borderRadius: BorderRadius.all(Radius.circular(100))
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top:15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Gopika Biju S', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
              Text('CEK', style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic
              ),),
            ],
          ),
        )
      ],
    );
  }
}

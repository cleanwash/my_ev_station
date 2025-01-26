// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_ev_station/domain/model/card_model.dart';

class CardItem extends StatelessWidget {
  final VoidCallback onTap;

  final CardModel cardModel;

  const CardItem({
    super.key,
    required this.onTap,
    required this.cardModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(cardModel.imageUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              cardModel.cardName,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:roome_app/models/hotel_model.dart';

class HotelItem extends StatelessWidget {
  final VoidCallback? onPressed;
  final HotelModel hotel;
  const HotelItem({
    super.key,
    this.onPressed,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          // border: Border.all( width: 1.2),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: const Offset(0.0, 3.0),
              blurRadius: 4.0,
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              height: 130,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    hotel.imageStr ?? '',
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
              ),
            ),
            const SizedBox(height: 6.0),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(hotel.name ?? '',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'MajoraBold',
                                color: Colors.black)),
                        Row(
                          children: [
                            Text(hotel.address ?? '',
                                style: TextStyle(
                              fontWeight: FontWeight.bold,

                                    fontSize: 12, color: Colors.grey)),
                            Icon(
                              Icons.location_on,
                              color: Color(0xFF57D2C1),
                            ),
                            Text('${hotel.Distance} km ',
                                style: TextStyle(
                              fontWeight: FontWeight.bold,

                                    fontSize: 12, color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            // Icon(Icons.rate_review_sharp),
                            Text('${hotel.reviewers} Reviewers',
                                style: TextStyle(
                              fontWeight: FontWeight.bold,

                                    fontSize: 12, color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          '\$${hotel.price}\n/per night',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'MajoraBold',
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}

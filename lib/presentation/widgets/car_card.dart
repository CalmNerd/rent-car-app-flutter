import 'package:flutter/material.dart';
import 'package:rent_cars_app/data/models/Car.dart';
import 'package:rent_cars_app/presentation/pages/car_details_page.dart';

class CarCard extends StatelessWidget {
  final Car car;
  const CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CarDetailsPage(car: car,)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 3, spreadRadius: 5),
          ],
        ),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(
              'assets/images/car.png',
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Text(
              car.model,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        // Image.asset('assets/images/gps.png', height: 20),
                        Icon(Icons.location_on, size: 20),
                        Text('${car.distance.toString()}km'),
                      ],
                    ),
                    Row(
                      children: [
                        // Image.asset('assets/images/fuel.png', height: 20),
                        Icon(Icons.local_gas_station, size: 20),
                        Text('${car.fuelCapacity.toString()}L'),
                      ],
                    ),
                  ],
                ),
                Text('${car.pricePerHour.toStringAsFixed(2)}\$/h'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

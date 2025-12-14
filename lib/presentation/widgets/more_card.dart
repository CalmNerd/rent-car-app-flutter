import 'package:flutter/material.dart';
import 'package:rent_cars_app/data/models/Car.dart';

class MoreCard extends StatelessWidget {
  final List<Car> cars;
  final int index;
  const MoreCard({super.key, required this.cars, required this.index});

  @override
  Widget build(BuildContext context) {
    final car = cars[index];
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                car.model,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.directions_car, size: 20),
                  Text(
                    car.distance.toString(),
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.local_gas_station, size: 20),
                  Text(
                    car.fuelCapacity.toString(),
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios, size: 20),
        ],
      ),
    );
  }
}
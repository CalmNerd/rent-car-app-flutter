import 'package:flutter/material.dart';
import 'package:rent_cars_app/data/models/Car.dart';
import 'package:rent_cars_app/presentation/widgets/car_card.dart';
import 'package:rent_cars_app/presentation/widgets/more_card.dart';

class CarDetailsPage extends StatelessWidget {
  final List<Car> cars;
  final int index;
  const CarDetailsPage({super.key, required this.cars, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Details'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
        children: [
          CarCard(cars: cars, index: index),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          radius: 30,
                          backgroundImage: AssetImage('assets/images/gps.png'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Mohit Singh',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '\$837.00',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/images/gps.png'),
                  ),
                ),
              ],
            ),
          ),
          ...List.generate(cars.length, (index) {
            return Column(
              children: [
                MoreCard(cars: cars, index: index),
                SizedBox(height: 20),
              ],
            );
          }),
        ],
      ),
    );
  }
}

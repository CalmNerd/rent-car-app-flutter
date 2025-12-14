import 'package:flutter/material.dart';
import 'package:rent_cars_app/data/models/Car.dart';
import 'package:rent_cars_app/presentation/widgets/car_card.dart';

class CarListScreen extends StatelessWidget {
  const CarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Car> cars = [
    Car(model: 'Toyota Camry', distance: 100, fuelCapacity: 50, pricePerHour: 100),
    Car(model: 'Honda Accord', distance: 150, fuelCapacity: 60, pricePerHour: 150),
    Car(model: 'Ford Mustang', distance: 200, fuelCapacity: 70, pricePerHour: 200),
  ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose your car', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,),
        ),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarCard(cars: cars, index: index);
        },
      ),
    );
  }
}
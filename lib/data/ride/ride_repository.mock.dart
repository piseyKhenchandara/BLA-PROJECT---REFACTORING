import 'package:bla/data/dummy_data.dart';
import 'package:bla/data/ride/ride_repository.dart';
import 'package:bla/model/ride/ride.dart';
import 'package:bla/model/ride_pref/ride_pref.dart';

class RideRepositoryMock implements RideRepository {
  @override
  Future<List<Ride>> fetchRides() async {
    return fakeRides;
  }

  @override
  Future<List<Ride>> getMatchRide(RidePreference preferences) async {
    return fakeRides.where((ride) {
      final sameDay =
          ride.departureDate.day == preferences.departureDate.day &&
          ride.departureDate.month == preferences.departureDate.month &&
          ride.departureDate.year == preferences.departureDate.year;

      return ride.departureLocation == preferences.departure &&
          ride.arrivalLocation == preferences.arrival &&
          ride.availableSeats >= preferences.requestedSeats &&
          sameDay;
    }).toList();
  }
}

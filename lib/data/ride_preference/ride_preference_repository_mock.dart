import 'package:bla/data/dummy_data.dart';
import 'package:bla/data/ride_preference/ride_preference_repository.dart';
import 'package:bla/model/ride_pref/ride_pref.dart';

class RidePrefRepositoryMock implements RidePrefRepository {
  @override
  Future<List<RidePreference>> getRidePreferences() async {
    

    return fakeRidePrefs;
  }


  @override
  Future<void> addRidePreference(RidePreference preference) async {
 
    return fakeRidePrefs.add(preference);
  }


  @override
  Future<void> removeRidePreference(RidePreference preference) async {
   
    fakeRidePrefs.remove(preference);
  }
}

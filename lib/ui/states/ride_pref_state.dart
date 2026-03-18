import 'package:bla/data/ride_preference/ride_preference_repository.dart';
import 'package:bla/model/ride_pref/ride_pref.dart';
import 'package:flutter/material.dart';

class RidePrefState extends ChangeNotifier {
  final RidePrefRepository _repository;

  RidePreference? _selectedPreference;
  List<RidePreference> _preferenceHistory = [];


  RidePrefState(this._repository) {
    _loadHistory();
  }

  RidePreference? get selectedPreference => _selectedPreference;


  List<RidePreference> get preferenceHistory =>
      List.unmodifiable(_preferenceHistory);



  Future<void> _loadHistory() async {

    _preferenceHistory = await _repository.getRidePreferences();
    notifyListeners();
  }

  Future<void> selectPreference(RidePreference preference) async {
    
    if (preference != _selectedPreference) {

      _selectedPreference = preference;
      await _repository.addRidePreference(preference);
      _preferenceHistory = await _repository.getRidePreferences();
      notifyListeners();
    }
  }
}

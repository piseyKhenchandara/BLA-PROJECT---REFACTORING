import 'package:bla/model/ride_pref/ride_pref.dart';
import 'package:bla/ui/states/ride_pref_state.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  final RidePrefState _ridePrefState;

  HomeViewModel({required RidePrefState ridePrefState})
    : _ridePrefState = ridePrefState {
    _ridePrefState.addListener(notifyListeners);
  }

  RidePreference? get selectedPreference => _ridePrefState.selectedPreference;
  List<RidePreference> get preferenceHistory =>
      _ridePrefState.preferenceHistory;

  Future<void> selectPreference(RidePreference preference) async {
    await _ridePrefState.selectPreference(preference);
  }

  @override
  void dispose() {
    _ridePrefState.removeListener(notifyListeners);
    super.dispose();
  }
}

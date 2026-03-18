import 'package:bla/data/repositories/location_repository.dart';
import 'package:bla/data/repositories/location_repository_mock.dart';
import 'package:bla/data/ride/ride_repository.dart';
import 'package:bla/data/ride/ride_repository.mock.dart';
import 'package:bla/data/ride_preference/ride_preference_repository.dart';
import 'package:bla/data/ride_preference/ride_preference_repository_mock.dart';


import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'main_common.dart';

List<SingleChildWidget> get devProviders {
  return [
    Provider<LocationRepository>(create: (_) => LocationRepositoryMock()),
    Provider<RideRepository>(create: (_) => RideRepositoryMock()),
    Provider<RidePrefRepository>(create: (_) => RidePrefRepositoryMock()),
  ];
}

void main() {
  mainCommon(devProviders);
}

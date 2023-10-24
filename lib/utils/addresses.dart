import 'package:fhir/r4.dart';

import 'utils.dart';

List<Address>? addressList(
  dynamic row, {
  int? streetAddressIndex,
  int? cityOrTownIndex,
  int? districtOrCountyIndex,
  int? stateOrProvinceIndex,
  int? postalOrZipCodeIndex,
  int? countryIndex,
}) {
  final Address? singleAddress = address(
    row,
    streetAddressIndex: streetAddressIndex,
    cityOrTownIndex: cityOrTownIndex,
    districtOrCountyIndex: districtOrCountyIndex,
    stateOrProvinceIndex: stateOrProvinceIndex,
    postalOrZipCodeIndex: postalOrZipCodeIndex,
    countryIndex: countryIndex,
  );
  return singleAddress == null ? null : <Address>[singleAddress];
}

Address? address(
  dynamic row, {
  int? streetAddressIndex,
  int? cityOrTownIndex,
  int? districtOrCountyIndex,
  int? stateOrProvinceIndex,
  int? postalOrZipCodeIndex,
  int? countryIndex,
}) {
  return (isNullOrBlank(streetAddressIndex, row) &&
          isNullOrBlank(cityOrTownIndex, row) &&
          isNullOrBlank(districtOrCountyIndex, row) &&
          isNullOrBlank(stateOrProvinceIndex, row) &&
          isNullOrBlank(postalOrZipCodeIndex, row) &&
          isNullOrBlank(countryIndex, row))
      ? null
      : Address(
          line: isNullOrBlank(streetAddressIndex, row)
              ? null
              : <String>[row[streetAddressIndex]],
          city:
              isNullOrBlank(cityOrTownIndex, row) ? null : row[cityOrTownIndex],
          district: isNullOrBlank(districtOrCountyIndex, row)
              ? null
              : row[districtOrCountyIndex],
          state: isNullOrBlank(stateOrProvinceIndex, row)
              ? null
              : row[stateOrProvinceIndex],
          postalCode: isNullOrBlank(postalOrZipCodeIndex, row)
              ? null
              : row[postalOrZipCodeIndex].toString(),
          country: isNullOrBlank(countryIndex, row) ? null : row[countryIndex],
        );
}

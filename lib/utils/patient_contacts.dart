import 'package:data_on_fhir/utils/utils.dart';
import 'package:fhir/r4/r4.dart';

List<PatientContact>? patientContacts(
  dynamic row, {
  int? contactFamilyNameIndex,
  int? contactGivenNamesIndex,
  int? contactPhoneIndex,
  int? contactStreetAddressIndex,
  int? contactCityOrTownIndex,
  int? contactDistrictOrCountyIndex,
  int? contactStateOrProvinceIndex,
  int? contactPostalOrZipCodeIndex,
  int? contactCountryIndex,
}) {
  if (isNullOrBlank(contactFamilyNameIndex, row) &&
      isNullOrBlank(contactGivenNamesIndex, row) &&
      isNullOrBlank(contactPhoneIndex, row) &&
      isNullOrBlank(contactStreetAddressIndex, row) &&
      isNullOrBlank(contactCityOrTownIndex, row) &&
      isNullOrBlank(contactDistrictOrCountyIndex, row) &&
      isNullOrBlank(contactStateOrProvinceIndex, row) &&
      isNullOrBlank(contactPostalOrZipCodeIndex, row) &&
      isNullOrBlank(contactCountryIndex, row)) {
    return null;
  } else {
    return [
      PatientContact(
        name: name(
          row,
          familyNameIndex: contactFamilyNameIndex,
          givenNamesIndex: contactGivenNamesIndex,
        ),
        telecom: contactPoints(
          row,
          phone1Index: contactPhoneIndex,
        ),
        address: address(
          row,
          streetAddressIndex: contactStreetAddressIndex,
          cityOrTownIndex: contactCityOrTownIndex,
          districtOrCountyIndex: contactDistrictOrCountyIndex,
          stateOrProvinceIndex: contactStateOrProvinceIndex,
          postalOrZipCodeIndex: contactPostalOrZipCodeIndex,
          countryIndex: contactCountryIndex,
        ),
      ),
    ];
  }
}

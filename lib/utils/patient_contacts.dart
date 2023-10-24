import 'package:data_on_fhir/utils/utils.dart';
import 'package:fhir/r4.dart';
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
  print('patient contacts');
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
        relationship: [
          CodeableConcept(
            coding: [
              Coding(
                code: FhirCode('C'),
                system:
                    FhirUri('http://terminology.hl7.org/CodeSystem/v2-0131'),
                display: 'Emergency Contact',
              ),
            ],
          ),
        ],
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

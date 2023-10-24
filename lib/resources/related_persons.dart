import 'package:data_on_fhir/utils/relationships.dart';
import 'package:fhir/r4.dart';

import '../utils/utils.dart';

/// This function returns a list of [RelatedPerson]s that have been created from the
/// data in the spreadsheet rows that are passed
List<RelatedPerson> relatedPersons(List<List<dynamic>> rows) {
  /// Create the list that we'll eventually return
  final List<RelatedPerson> resourceList = <RelatedPerson>[];

  /// As long as the rows are not empty, we look for the indexes of the various
  /// values. This is setup so that as long as we don't change names of the the
  /// headings, we can easily add new values and not have to rewrite all of the
  /// parsing code
  if (rows.isNotEmpty) {
    final idIndex = rows[0].indexOf('ID');
    final patientIdIndex = rows[0].indexOf('Patient ID');
    final relationshipIndex = rows[0].indexOf('Relationship');
    final familyNameIndex = rows[0].indexOf('Family Name');
    final givenNamesIndex = rows[0].indexOf('Given Names');
    final phone1Index = rows[0].indexOf('Phone 1');
    final phoneUse1Index = rows[0].indexOf('Phone Use 1');
    final phone2Index = rows[0].indexOf('Phone 2');
    final phoneUse2Index = rows[0].indexOf('Phone Use 2');
    final emailIndex = rows[0].indexOf('Email');
    final emailUseIndex = rows[0].indexOf('Email Use');
    final genderAtBirthIndex = rows[0].indexOf('Gender At Birth');
    final birthdateIndex = rows[0].indexOf('Birthdate');
    final streetAddressIndex = rows[0].indexOf('Street Address');
    final cityOrTownIndex = rows[0].indexOf('City or Town');
    final districtOrCountyIndex = rows[0].indexOf('District or County');
    final stateOrProvinceIndex = rows[0].indexOf('State or Province');
    final postalOrZipCodeIndex = rows[0].indexOf('Postal or Zip Code');
    final countryIndex = rows[0].indexOf('Country');
    final preferredLanguageIndex = rows[0].indexOf('Preferred Language');

    /// Check and see the last row that has an ID.
    var lastIndex = rows.indexWhere(
        (element) => element[0] == null || element[0].toString() == '');

    /// If there is no such row, we look at all of them, otherwise, only until
    /// that row.
    lastIndex = lastIndex == -1 ? rows.length : lastIndex;

    /// We look through each row starting with the second one (index 1), because
    /// the first row (index 0) cotains the headers
    for (var i = 1; i < lastIndex; i++) {
      print(i);
      if (!isNullOrBlank(patientIdIndex, rows[i])) {
        resourceList.add(
          RelatedPerson(
              fhirId: isNullOrBlank(idIndex, rows[i])
                  ? null
                  : rows[i][idIndex].toString(),
              patient:
                  Reference(reference: 'Patient/${rows[i][patientIdIndex]}'),
              relationship: relationships(relationshipIndex, rows[i]),
              name: names(
                rows[i],
                familyNameIndex: familyNameIndex,
                givenNamesIndex: givenNamesIndex,
              ),
              telecom: contactPoints(
                rows[i],
                phone1Index: phone1Index,
                phoneUse1Index: phoneUse1Index,
                phone2Index: phone2Index,
                phoneUse2Index: phoneUse2Index,
                emailIndex: emailIndex,
                emailUseIndex: emailUseIndex,
              ),
              gender: isNullOrBlank(genderAtBirthIndex, rows[i])
                  ? null
                  : rows[i][genderAtBirthIndex],
              birthDate: isNullOrBlank(birthdateIndex, rows[i])
                  ? null
                  : fhirDateFromSpreadsheet(rows[i][birthdateIndex]),
              address: addressList(
                rows[i],
                streetAddressIndex: streetAddressIndex,
                cityOrTownIndex: cityOrTownIndex,
                districtOrCountyIndex: districtOrCountyIndex,
                stateOrProvinceIndex: stateOrProvinceIndex,
                postalOrZipCodeIndex: postalOrZipCodeIndex,
                countryIndex: countryIndex,
              ),
              communication: communication<RelatedPersonCommunication>(
                  preferredLanguageIndex, rows[i])),
        );
      }
    }
  }
  return resourceList;
}

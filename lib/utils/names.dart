import 'package:fhir/r4.dart';

import 'utils.dart';

HumanName? name(
  dynamic row, {
  int? preferredNameIndex,
  int? familyNameIndex,
  int? givenNamesIndex,
}) {
  print('name');
  if (isNullOrBlank(preferredNameIndex, row) &&
      isNullOrBlank(familyNameIndex, row) &&
      isNullOrBlank(givenNamesIndex, row)) {
    return null;
  } else if (!isNullOrBlank(preferredNameIndex, row)) {
    return HumanName(
      use: HumanNameUse.usual,
      given: row[preferredNameIndex].toString().split(' '),
    );
  } else {
    return HumanName(
      use: HumanNameUse.official,
      family: isNullOrBlank(familyNameIndex, row) ? null : row[familyNameIndex],
      given: isNullOrBlank(familyNameIndex, row)
          ? null
          : row[givenNamesIndex].toString().split(' '),
    );
  }
}

List<HumanName>? names(
  dynamic row, {
  int? preferredNameIndex,
  int? familyNameIndex,
  int? givenNamesIndex,
}) {
  print('names');
  final List<HumanName> nameList = <HumanName>[];
  if (!isNullOrBlank(preferredNameIndex, row)) {
    nameList.add(
      HumanName(
        use: HumanNameUse.usual,
        given: row[preferredNameIndex].toString().split(' '),
      ),
    );
  }
  if (!isNullOrBlank(familyNameIndex, row) ||
      !isNullOrBlank(givenNamesIndex, row)) {
    nameList.add(
      HumanName(
        use: HumanNameUse.official,
        family: row[familyNameIndex],
        given: row[givenNamesIndex].toString().split(' '),
      ),
    );
  }
  return nameList.isEmpty ? null : nameList;
}

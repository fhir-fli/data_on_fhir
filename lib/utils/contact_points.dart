import 'package:fhir/r4.dart';

import 'utils.dart';

List<ContactPoint>? contactPoints(
  dynamic row, {
  int? phone1Index,
  int? phoneUse1Index,
  int? phone2Index,
  int? phoneUse2Index,
  int? emailIndex,
  int? emailUseIndex,
}) {
  final List<ContactPoint> contactPointList = <ContactPoint>[];
  if (!isNullOrBlank(phone1Index, row)) {
    contactPointList.add(
      ContactPoint.fromJson({
        'system': 'phone',
        'value': row[phone1Index],
        'use': phoneUse1Index == null || phoneUse1Index == -1
            ? null
            : row[phoneUse1Index],
      }),
    );
  }
  if (!isNullOrBlank(phone2Index, row)) {
    contactPointList.add(
      ContactPoint.fromJson({
        'system': 'phone',
        'value': row[phone2Index],
        'use': phoneUse2Index == null || phoneUse2Index == -1
            ? null
            : row[phoneUse2Index],
      }),
    );
  }
  if (!isNullOrBlank(emailIndex, row)) {
    contactPointList.add(
      ContactPoint.fromJson({
        'system': ContactPointSystem.email,
        'value': row[emailIndex],
        'use': emailIndex == null || emailUseIndex == -1
            ? null
            : row[emailUseIndex],
      }),
    );
  }
  return contactPointList.isEmpty ? null : contactPointList;
}

bool isNullOrBlank(int? index, dynamic value) =>
    index == null ||
    index == -1 ||
    value[index] == null ||
    value[index].toString() == '';

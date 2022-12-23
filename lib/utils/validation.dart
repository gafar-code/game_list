

class ValidationMixin {
  String? isMoreThenMaxLength(String? input) {
    const maxLength = 10;
    final length = input?.length ?? 0;
    if (length > maxLength) return "Can't be more than 10 characters";
    return null;
  }
}

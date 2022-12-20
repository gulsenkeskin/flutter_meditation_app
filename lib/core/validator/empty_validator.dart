String? emptyValidator(value) {
  if (value!.isEmpty) {
    return 'Bu alan boş bırakılamaz.';
  }
  return null;
}

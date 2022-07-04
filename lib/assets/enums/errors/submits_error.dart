enum SubmitError {
  verify('Verifica que la infromacion sea correcta.');

  const SubmitError(this.errorMessage);
  final String errorMessage;
}

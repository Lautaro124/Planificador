enum InputErrors {
  empty('El campo se encuentra vacio'),
  email('El email no es valido'),
  noExist('No exite');

  const InputErrors(this.errorMesage);
  final String errorMesage;
}

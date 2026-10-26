class NoPuedePagar inherits Exception(message = "No tiene saldo positivo"){}
class EsFan inherits Exception(message = "No tiene descuento porque tiene abono fan"){}
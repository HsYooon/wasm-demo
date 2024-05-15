enum Currency {
  usd('840', 'US Doller', '\$'),
  cad('124', 'Canadian Dollar', '\$');

  const Currency(this.code, this.name, this.symbol);

  final String code;
  final String name;
  final String symbol;
}

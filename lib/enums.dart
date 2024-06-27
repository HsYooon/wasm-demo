enum Currency {
  usd('840', 'USD', 'US Doller', '\$'),
  cad('124', 'CAD', 'Canadian Dollar', '\$');

  const Currency(this.code, this.name, this.desc, this.symbol);

  final String code;
  final String name;
  final String desc;
  final String symbol;
}

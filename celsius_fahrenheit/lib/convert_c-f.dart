class ConverterCF() {
  double gc, gf;

  double cf() {
    return gc * 1.8 + 32.0;
  }

  double fd() {
    return (gf - 32) / 1.8;
  }
}
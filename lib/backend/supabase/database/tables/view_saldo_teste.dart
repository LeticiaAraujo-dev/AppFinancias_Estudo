import '../database.dart';

class ViewSaldoTesteTable extends SupabaseTable<ViewSaldoTesteRow> {
  @override
  String get tableName => 'view_saldo_teste';

  @override
  ViewSaldoTesteRow createRow(Map<String, dynamic> data) =>
      ViewSaldoTesteRow(data);
}

class ViewSaldoTesteRow extends SupabaseDataRow {
  ViewSaldoTesteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewSaldoTesteTable();

  String? get usuario => getField<String>('usuario');
  set usuario(String? value) => setField<String>('usuario', value);

  double? get totalEntrada => getField<double>('total_entrada');
  set totalEntrada(double? value) => setField<double>('total_entrada', value);

  double? get totalSaida => getField<double>('total_saida');
  set totalSaida(double? value) => setField<double>('total_saida', value);

  double? get saldoFinal => getField<double>('saldo_final');
  set saldoFinal(double? value) => setField<double>('saldo_final', value);
}

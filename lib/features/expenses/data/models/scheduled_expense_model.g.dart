// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_expense_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScheduledExpenseModelAdapter
    extends TypeAdapter<_$ScheduledExpenseModelImpl> {
  @override
  final int typeId = 1;

  @override
  _$ScheduledExpenseModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ScheduledExpenseModelImpl(
      id: fields[0] as String,
      amount: fields[1] as double,
      category: fields[2] as String,
      dayOfMonth: fields[3] as int,
      nextRunDate: fields[4] as DateTime,
      note: fields[5] as String?,
      isActive: fields[6] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, _$ScheduledExpenseModelImpl obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.amount)
      ..writeByte(2)
      ..write(obj.category)
      ..writeByte(3)
      ..write(obj.dayOfMonth)
      ..writeByte(4)
      ..write(obj.nextRunDate)
      ..writeByte(5)
      ..write(obj.note)
      ..writeByte(6)
      ..write(obj.isActive);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScheduledExpenseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

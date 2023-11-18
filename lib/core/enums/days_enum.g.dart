// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'days_enum.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DaysAdapter extends TypeAdapter<Days> {
  @override
  final int typeId = 2;

  @override
  Days read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Days.monday;
      case 1:
        return Days.tuesday;
      case 2:
        return Days.wednesday;
      case 3:
        return Days.thursday;
      case 4:
        return Days.friday;
      case 5:
        return Days.saturday;
      case 6:
        return Days.sunday;
      default:
        return Days.monday;
    }
  }

  @override
  void write(BinaryWriter writer, Days obj) {
    switch (obj) {
      case Days.monday:
        writer.writeByte(0);
        break;
      case Days.tuesday:
        writer.writeByte(1);
        break;
      case Days.wednesday:
        writer.writeByte(2);
        break;
      case Days.thursday:
        writer.writeByte(3);
        break;
      case Days.friday:
        writer.writeByte(4);
        break;
      case Days.saturday:
        writer.writeByte(5);
        break;
      case Days.sunday:
        writer.writeByte(6);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DaysAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

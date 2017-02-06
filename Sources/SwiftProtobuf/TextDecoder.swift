// Sources/SwiftProtobuf/TextDecoder.swift - Text format decoding
//
// Copyright (c) 2014 - 2016 Apple Inc. and the project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See LICENSE.txt for license information:
// https://github.com/apple/swift-protobuf/blob/master/LICENSE.txt
//
// -----------------------------------------------------------------------------
///
/// Test format decoding engine.
///
// -----------------------------------------------------------------------------

import Foundation
import Swift

///
/// Provides a higher-level interface to the token stream coming
/// from a TextScanner.  In particular, this provides single-token
/// pushback and convenience functions for iterating over complex
/// structures.
///
public struct TextDecoder: Decoder {
    private var scanner: TextScanner
    public var complete: Bool {return scanner.complete}
    public var rejectConflictingOneof: Bool {return true}

    internal init(text: String, extensions: ExtensionSet? = nil) {
        scanner = TextScanner(text: text, extensions: extensions)
    }

    internal init(scanner: TextScanner) {
        self.scanner = scanner
    }

    // TODO: Implement this, move Text onto the new decodeMessage API
    public mutating func nextFieldNumber() throws -> Int? {
        throw DecodingError.failure
    }

    public mutating func decodeSingularFloatField(value: inout Float) throws {
        try decodeSingularField(fieldType: ProtobufFloat.self, value: &value)
    }
    public mutating func decodeSingularFloatField(value: inout Float?) throws {
        try decodeSingularField(fieldType: ProtobufFloat.self, value: &value)
    }
    public mutating func decodeRepeatedFloatField(value: inout [Float]) throws {
        try decodeRepeatedField(fieldType: ProtobufFloat.self, value: &value)
    }
    public mutating func decodeSingularDoubleField(value: inout Double) throws {
        try decodeSingularField(fieldType: ProtobufDouble.self, value: &value)
    }
    public mutating func decodeSingularDoubleField(value: inout Double?) throws {
        try decodeSingularField(fieldType: ProtobufDouble.self, value: &value)
    }
    public mutating func decodeRepeatedDoubleField(value: inout [Double]) throws {
        try decodeRepeatedField(fieldType: ProtobufDouble.self, value: &value)
    }
    public mutating func decodeSingularInt32Field(value: inout Int32) throws {
        try decodeSingularField(fieldType: ProtobufInt32.self, value: &value)
    }
    public mutating func decodeSingularInt32Field(value: inout Int32?) throws {
        try decodeSingularField(fieldType: ProtobufInt32.self, value: &value)
    }
    public mutating func decodeRepeatedInt32Field(value: inout [Int32]) throws {
        try decodeRepeatedField(fieldType: ProtobufInt32.self, value: &value)
    }
    public mutating func decodeSingularInt64Field(value: inout Int64) throws {
        try decodeSingularField(fieldType: ProtobufInt64.self, value: &value)
    }
    public mutating func decodeSingularInt64Field(value: inout Int64?) throws {
        try decodeSingularField(fieldType: ProtobufInt64.self, value: &value)
    }
    public mutating func decodeRepeatedInt64Field(value: inout [Int64]) throws {
        try decodeRepeatedField(fieldType: ProtobufInt64.self, value: &value)
    }
    public mutating func decodeSingularUInt32Field(value: inout UInt32) throws {
        try decodeSingularField(fieldType: ProtobufUInt32.self, value: &value)
    }
    public mutating func decodeSingularUInt32Field(value: inout UInt32?) throws {
        try decodeSingularField(fieldType: ProtobufUInt32.self, value: &value)
    }
    public mutating func decodeRepeatedUInt32Field(value: inout [UInt32]) throws {
        try decodeRepeatedField(fieldType: ProtobufUInt32.self, value: &value)
    }
    public mutating func decodeSingularUInt64Field(value: inout UInt64) throws {
        try decodeSingularField(fieldType: ProtobufUInt64.self, value: &value)
    }
    public mutating func decodeSingularUInt64Field(value: inout UInt64?) throws {
        try decodeSingularField(fieldType: ProtobufUInt64.self, value: &value)
    }
    public mutating func decodeRepeatedUInt64Field(value: inout [UInt64]) throws {
        try decodeRepeatedField(fieldType: ProtobufUInt64.self, value: &value)
    }
    public mutating func decodeSingularSInt32Field(value: inout Int32) throws {
        try decodeSingularField(fieldType: ProtobufSInt32.self, value: &value)
    }
    public mutating func decodeSingularSInt32Field(value: inout Int32?) throws {
        try decodeSingularField(fieldType: ProtobufSInt32.self, value: &value)
    }
    public mutating func decodeRepeatedSInt32Field(value: inout [Int32]) throws {
        try decodeRepeatedField(fieldType: ProtobufSInt32.self, value: &value)
    }
    public mutating func decodeSingularSInt64Field(value: inout Int64) throws {
        try decodeSingularField(fieldType: ProtobufSInt64.self, value: &value)
    }
    public mutating func decodeSingularSInt64Field(value: inout Int64?) throws {
        try decodeSingularField(fieldType: ProtobufSInt64.self, value: &value)
    }
    public mutating func decodeRepeatedSInt64Field(value: inout [Int64]) throws {
        try decodeRepeatedField(fieldType: ProtobufSInt64.self, value: &value)
    }
    public mutating func decodeSingularFixed32Field(value: inout UInt32) throws {
        try decodeSingularField(fieldType: ProtobufFixed32.self, value: &value)
    }
    public mutating func decodeSingularFixed32Field(value: inout UInt32?) throws {
        try decodeSingularField(fieldType: ProtobufFixed32.self, value: &value)
    }
    public mutating func decodeRepeatedFixed32Field(value: inout [UInt32]) throws {
        try decodeRepeatedField(fieldType: ProtobufFixed32.self, value: &value)
    }
    public mutating func decodeSingularFixed64Field(value: inout UInt64) throws {
        try decodeSingularField(fieldType: ProtobufFixed64.self, value: &value)
    }
    public mutating func decodeSingularFixed64Field(value: inout UInt64?) throws {
        try decodeSingularField(fieldType: ProtobufFixed64.self, value: &value)
    }
    public mutating func decodeRepeatedFixed64Field(value: inout [UInt64]) throws {
        try decodeRepeatedField(fieldType: ProtobufFixed64.self, value: &value)
    }
    public mutating func decodeSingularSFixed32Field(value: inout Int32) throws {
        try decodeSingularField(fieldType: ProtobufSFixed32.self, value: &value)
    }
    public mutating func decodeSingularSFixed32Field(value: inout Int32?) throws {
        try decodeSingularField(fieldType: ProtobufSFixed32.self, value: &value)
    }
    public mutating func decodeRepeatedSFixed32Field(value: inout [Int32]) throws {
        try decodeRepeatedField(fieldType: ProtobufSFixed32.self, value: &value)
    }
    public mutating func decodeSingularSFixed64Field(value: inout Int64) throws {
        try decodeSingularField(fieldType: ProtobufSFixed64.self, value: &value)
    }
    public mutating func decodeSingularSFixed64Field(value: inout Int64?) throws {
        try decodeSingularField(fieldType: ProtobufSFixed64.self, value: &value)
    }
    public mutating func decodeRepeatedSFixed64Field(value: inout [Int64]) throws {
        try decodeRepeatedField(fieldType: ProtobufSFixed64.self, value: &value)
    }
    public mutating func decodeSingularBoolField(value: inout Bool) throws {
        try decodeSingularField(fieldType: ProtobufBool.self, value: &value)
    }
    public mutating func decodeSingularBoolField(value: inout Bool?) throws {
        try decodeSingularField(fieldType: ProtobufBool.self, value: &value)
    }
    public mutating func decodeRepeatedBoolField(value: inout [Bool]) throws {
        try decodeRepeatedField(fieldType: ProtobufBool.self, value: &value)
    }
    public mutating func decodeSingularStringField(value: inout String) throws {
        try decodeSingularField(fieldType: ProtobufString.self, value: &value)
    }
    public mutating func decodeSingularStringField(value: inout String?) throws {
        try decodeSingularField(fieldType: ProtobufString.self, value: &value)
    }
    public mutating func decodeRepeatedStringField(value: inout [String]) throws {
        try decodeRepeatedField(fieldType: ProtobufString.self, value: &value)
    }
    public mutating func decodeSingularBytesField(value: inout Data) throws {
        try decodeSingularField(fieldType: ProtobufBytes.self, value: &value)
    }
    public mutating func decodeSingularBytesField(value: inout Data?) throws {
        try decodeSingularField(fieldType: ProtobufBytes.self, value: &value)
    }
    public mutating func decodeRepeatedBytesField(value: inout [Data]) throws {
        try decodeRepeatedField(fieldType: ProtobufBytes.self, value: &value)
    }

    private mutating func decodeSingularField<S: FieldType>(fieldType: S.Type, value: inout S.BaseType?) throws {
        try scanner.skipRequiredColon()
        try S.setFromText(scanner: scanner, value: &value)
    }

    private mutating func decodeSingularField<S: FieldType>(fieldType: S.Type, value: inout S.BaseType) throws {
        try scanner.skipRequiredColon()
        try S.setFromText(scanner: scanner, value: &value)
    }

    private mutating func decodeRepeatedField<S: FieldType>(fieldType: S.Type, value: inout [S.BaseType]) throws {
        try scanner.skipRequiredColon()
        if scanner.skipOptionalBeginArray() {
            var firstItem = true
            while true {
                if scanner.skipOptionalEndArray() {
                    return
                }
                if firstItem {
                    firstItem = false
                } else {
                    try scanner.skipRequiredComma()
                }
                try S.setFromText(scanner: scanner, value: &value)
            }
        } else {
            try S.setFromText(scanner: scanner, value: &value)
        }
    }

    private func decodeEnum<E: Enum>(from scanner: TextScanner) throws -> E where E.RawValue == Int {
        if let name = try scanner.nextOptionalEnumName() {
            if let b = E(protoName: name) {
                return b
            } else {
                throw DecodingError.unrecognizedEnumValue
            }
        }
        let number = try scanner.nextSInt()
        if number >= Int64(Int32.min) && number <= Int64(Int32.max) {
            let n = Int32(truncatingBitPattern: number)
            if let e = E(rawValue: Int(n)) {
                return e
            } else {
                throw DecodingError.unrecognizedEnumValue
            }
        }
        throw DecodingError.malformedText

    }

    public mutating func decodeSingularEnumField<E: Enum>(value: inout E?) throws where E.RawValue == Int {
        try scanner.skipRequiredColon()
        let e: E = try decodeEnum(from: scanner)
        value = e
    }

    public mutating func decodeSingularEnumField<E: Enum>(value: inout E) throws where E.RawValue == Int {
        try scanner.skipRequiredColon()
        let e: E = try decodeEnum(from: scanner)
        value = e
    }

    public mutating func decodeRepeatedEnumField<E: Enum>(value: inout [E]) throws where E.RawValue == Int {
        try scanner.skipRequiredColon()
        if scanner.skipOptionalBeginArray() {
            var firstItem = true
            while true {
                if scanner.skipOptionalEndArray() {
                    return
                }
                if firstItem {
                    firstItem = false
                } else {
                    try scanner.skipRequiredComma()
                }
                let e: E = try decodeEnum(from: scanner)
                value.append(e)
            }
        } else {
            let e: E = try decodeEnum(from: scanner)
            value.append(e)
        }
    }

    internal mutating func decodeFullObject<M: Message>(message: inout M, terminator: UInt8?) throws {
        guard let nameProviding = (M.self as? ProtoNameProviding.Type) else {
            throw DecodingError.missingFieldNames
        }
        let names = nameProviding._protobuf_fieldNames
        while true {
            if let terminator = terminator {
                if scanner.skipOptionalObjectEnd(terminator) {
                    return
                }
            }
            if let key = try scanner.nextOptionalExtensionKey() {
                // Extension key; look up in the extension registry
                if let fieldNumber = scanner.extensions?.fieldNumberForProto(messageType: M.self, protoFieldName: key) {
                    try message.decodeField(decoder: &self, fieldNumber: fieldNumber)
                } else {
                    throw DecodingError.unknownField
                }
            } else if let fieldNumber = try scanner.nextFieldNumber(names: names) {
                try message.decodeField(decoder: &self, fieldNumber: fieldNumber)
            } else if terminator == nil {
                return
            } else {
                throw DecodingError.truncatedInput
            }
            scanner.skipOptionalSeparator()
        }
    }

    public mutating func decodeSingularMessageField<M: Message>(value: inout M?) throws {
        _ = scanner.skipOptionalColon()
        value = try M(scanner: scanner)
    }

    public mutating func decodeRepeatedMessageField<M: Message>(value: inout [M]) throws {
        _ = scanner.skipOptionalColon()
        if scanner.skipOptionalBeginArray() {
            var firstItem = true
            while true {
                if scanner.skipOptionalEndArray() {
                    return
                }
                if firstItem {
                    firstItem = false
                } else {
                    try scanner.skipRequiredComma()
                }
                let m = try M(scanner: scanner)
                value.append(m)
            }
        } else {
            let m = try M(scanner: scanner)
            value.append(m)
        }
    }

    public mutating func decodeSingularGroupField<G: Message>(value: inout G?) throws {
        try decodeSingularMessageField(value: &value)
    }

    public mutating func decodeRepeatedGroupField<G: Message>(value: inout [G]) throws {
        try decodeRepeatedMessageField(value: &value)
    }

    private mutating func decodeMapEntry<KeyType: MapKeyType, ValueType: MapValueType>(mapType: ProtobufMap<KeyType, ValueType>.Type, value: inout ProtobufMap<KeyType, ValueType>.BaseType) throws {
        var keyField: KeyType.BaseType?
        var valueField: ValueType.BaseType?
        let terminator = try scanner.skipObjectStart()
        while true {
            if scanner.skipOptionalObjectEnd(terminator) {
                if let keyField = keyField, let valueField = valueField {
                    value[keyField] = valueField
                    return
                } else {
                    throw DecodingError.malformedText
                }
            }
            if let key = try scanner.nextKey() {
                switch key {
                case "key":
                    try decodeSingularField(fieldType: KeyType.self, value: &keyField)
                case "value":
                    try decodeSingularField(fieldType: ValueType.self, value: &valueField)
                default:
                    throw DecodingError.unknownField
                }
                scanner.skipOptionalSeparator()
            }
        }
    }

    public mutating func decodeMapField<KeyType: MapKeyType, ValueType: MapValueType>(fieldType: ProtobufMap<KeyType, ValueType>.Type, value: inout ProtobufMap<KeyType, ValueType>.BaseType) throws {
        _ = scanner.skipOptionalColon()
        if scanner.skipOptionalBeginArray() {
            var firstItem = true
            while true {
                if scanner.skipOptionalEndArray() {
                    return
                }
                if firstItem {
                    firstItem = false
                } else {
                    try scanner.skipRequiredComma()
                }
                try decodeMapEntry(mapType: fieldType, value: &value)
            }
        } else {
            try decodeMapEntry(mapType: fieldType, value: &value)
        }
    }

    private mutating func decodeMapEntry<KeyType: MapKeyType, ValueType: Enum>(mapType: ProtobufEnumMap<KeyType, ValueType>.Type, value: inout ProtobufEnumMap<KeyType, ValueType>.BaseType) throws where ValueType.RawValue == Int {
        var keyField: KeyType.BaseType?
        var valueField: ValueType?
        let terminator = try scanner.skipObjectStart()
        while true {
            if scanner.skipOptionalObjectEnd(terminator) {
                if let keyField = keyField, let valueField = valueField {
                    value[keyField] = valueField
                    return
                } else {
                    throw DecodingError.malformedText
                }
            }
            if let key = try scanner.nextKey() {
                switch key {
                case "key":
                    try decodeSingularField(fieldType: KeyType.self, value: &keyField)
                case "value":
                    try decodeSingularEnumField(value: &valueField)
                default:
                    throw DecodingError.unknownField
                }
                scanner.skipOptionalSeparator()
            }
        }
    }

    public mutating func decodeMapField<KeyType: MapKeyType, ValueType: Enum>(fieldType: ProtobufEnumMap<KeyType, ValueType>.Type, value: inout ProtobufEnumMap<KeyType, ValueType>.BaseType) throws where ValueType.RawValue == Int {
        _ = scanner.skipOptionalColon()
        if scanner.skipOptionalBeginArray() {
            var firstItem = true
            while true {
                if scanner.skipOptionalEndArray() {
                    return
                }
                if firstItem {
                    firstItem = false
                } else {
                    try scanner.skipRequiredComma()
                }
                try decodeMapEntry(mapType: fieldType, value: &value)
            }
        } else {
            try decodeMapEntry(mapType: fieldType, value: &value)
        }
    }

    private mutating func decodeMapEntry<KeyType: MapKeyType, ValueType: Message>(mapType: ProtobufMessageMap<KeyType, ValueType>.Type, value: inout ProtobufMessageMap<KeyType, ValueType>.BaseType) throws {
        var keyField: KeyType.BaseType?
        var valueField: ValueType?
        let terminator = try scanner.skipObjectStart()
        while true {
            if scanner.skipOptionalObjectEnd(terminator) {
                if let keyField = keyField, let valueField = valueField {
                    value[keyField] = valueField
                    return
                } else {
                    throw DecodingError.malformedText
                }
            }
            if let key = try scanner.nextKey() {
                switch key {
                case "key":
                    try decodeSingularField(fieldType: KeyType.self, value: &keyField)
                case "value":
                    try decodeSingularMessageField(value: &valueField)
                default:
                    throw DecodingError.unknownField
                }
                scanner.skipOptionalSeparator()
            }
        }
    }

    public mutating func decodeMapField<KeyType: MapKeyType, ValueType: Message>(fieldType: ProtobufMessageMap<KeyType, ValueType>.Type, value: inout ProtobufMessageMap<KeyType, ValueType>.BaseType) throws {
        _ = scanner.skipOptionalColon()
        if scanner.skipOptionalBeginArray() {
            var firstItem = true
            while true {
                if scanner.skipOptionalEndArray() {
                    return
                }
                if firstItem {
                    firstItem = false
                } else {
                    try scanner.skipRequiredComma()
                }
                try decodeMapEntry(mapType: fieldType, value: &value)
            }
        } else {
            try decodeMapEntry(mapType: fieldType, value: &value)
        }
    }

    public mutating func decodeExtensionField(values: inout ExtensionFieldValueSet, messageType: Message.Type, fieldNumber: Int) throws {
        if let ext = scanner.extensions?[messageType, fieldNumber] {
            var fieldValue = values[fieldNumber] ?? ext.newField()
            try fieldValue.decodeField(decoder: &self)
            values[fieldNumber] = fieldValue
        }
    }
}

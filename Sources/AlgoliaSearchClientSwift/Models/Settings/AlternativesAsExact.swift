//
//  AlternativesAsExact.swift
//  
//
//  Created by Vladislav Fitc on 12.03.2020.
//

import Foundation

enum AlternativesAsExact: Codable, Equatable {
  case ignorePlurals
  case singleWordSynonym
  case multiWordsSynonym
  case other(String)
}

extension AlternativesAsExact: RawRepresentable {
  
  var rawValue: String {
    switch self {
    case .ignorePlurals:
      return "ignorePlurals"
    case .singleWordSynonym:
      return "singleWordSynonym"
    case .multiWordsSynonym:
      return "multiWordsSynonym"
    case .other(let value):
      return value
    }
  }
  
  init(rawValue: Self.RawValue) {
    switch rawValue {
    case AlternativesAsExact.ignorePlurals.rawValue:
      self = .ignorePlurals
    case AlternativesAsExact.singleWordSynonym.rawValue:
      self = .singleWordSynonym
    case AlternativesAsExact.multiWordsSynonym.rawValue:
      self = .multiWordsSynonym
    default:
      self = .other(rawValue)
    }
  }
  
}
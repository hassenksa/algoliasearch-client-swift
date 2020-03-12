//
//  DecompoundedAttributesTests.swift
//  
//
//  Created by Vladislav Fitc on 12.03.2020.
//

import Foundation
import XCTest
@testable import AlgoliaSearchClientSwift

class DecompoundedAttributesTests: XCTestCase {

  func testEncoding() {
    testEncoding(DecompoundedAttributes((.german, ["attr1", "attr2", "attr3"])), expected: ["de": ["attr1", "attr2", "attr3"]])
  }
    
  
  func testDecoding() {
    testDecoding(["de": ["attr1", "attr2", "attr3"]], expected: DecompoundedAttributes((.german, ["attr1", "attr2", "attr3"])))
  }
  
}
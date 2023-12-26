//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Daniel Yankiver on 12/26/23.
//

import Foundation

extension Bundle {
  func decode(_ file: String) -> [String: Astronaut] {
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("failed to locate \(file) in bundle.")
    }

    guard let data = try? Data(contentsOf: url) else {
      fatalError("failed to load \(file) in bundle.")
    }

    let decoder = JSONDecoder()
    
    guard let loaded = try? decoder.decode([String: Astronaut].self, from: data) else {
      fatalError("failed to decode \(file) from bundle.")
    }

    return loaded
  }
}

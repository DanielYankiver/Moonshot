//
//  ContentView.swift
//  Moonshot
//
//  Created by Daniel Yankiver on 12/22/23.
//

import SwiftUI

struct ContentView: View {
  let astronauts = Bundle.main.decode("astronauts.json")

  var body: some View {
    Text(String(astronauts.count))
  }
}

#Preview {
  ContentView()
}

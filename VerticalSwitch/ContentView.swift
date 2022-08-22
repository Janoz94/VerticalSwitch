//
//  ContentView.swift
//  VerticalSwitch
//
//  Created by Jan Rutkowski on 06/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            VerticalSwitch()
                .padding()
                .frame(width: 50, height: 150, alignment: .bottom)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

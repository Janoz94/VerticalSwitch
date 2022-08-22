//
//  VerticalSwitch.swift
//  VerticalSwitch
//
//  Created by Jan Rutkowski on 06/08/2022.
//

import SwiftUI

struct VerticalSwitch: View {
    @State var isActive: Bool = true

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                CustomRoundedRectangle(color: .blue, tl: 0.0, tr: geometry.size.height / 10.0, bl: 0.0, br: geometry.size.height / 10.0)
                VStack {
                    Text("A2")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .bold()
                        .minimumScaleFactor(0.3)
                        .padding(.bottom, -4.0)
                    ZStack {
                        RoundedRectangle(cornerRadius: geometry.size.height / 5.0)
                            .foregroundColor(.white)
                        VStack {
                            if !isActive {
                                Spacer()
                            }
                            Circle()
                                .foregroundColor(.blue)
                                .frame(width: 0.7 * geometry.size.width, height: 0.7 * geometry.size.width)
                                .padding([.leading, .trailing], 7.0)
                            if isActive {
                                Spacer()
                            }
                        }
                        .animation(.easeOut)
                        .padding([.bottom, .top], 7.0)
                    }
                    .onTapGesture {
                        isActive.toggle()
                    }
                    Text("A4")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .bold()
                        .minimumScaleFactor(0.3)
                        .padding(.top, -4.0)
                }
                .padding([.leading, .trailing])
                .padding([.top, .bottom], 5.0)
            }
        }
    }
}

struct VerticalSwitch_Previews: PreviewProvider {
    static var previews: some View {
        VerticalSwitch()
    }
}

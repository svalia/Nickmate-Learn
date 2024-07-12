//
//  BigButton.swift
//  Nickmate-Learn
//
//  Created by Valia Smolin on 12.07.2024.
//

import SwiftUI
struct BigButton: View {
    var text: String
    var color: Colors
    var action: () -> Void
    enum Colors {
        case blue
        case green
        
        var value: Color {
            switch self {
            case .blue:
                return Color(red: 0, green: 0.48, blue: 1)
            case .green:
                return Color(red: 0.16, green: 0.8, blue: 0.25)
            }
        }
    }
    //    var action:  () -> Void
    var body: some View {
        HStack {
            Spacer()
            HStack {
                Text(text)
                    .foregroundStyle(.white)
            }
            .padding(.horizontal, 20)
            .padding(.all, 14)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(color.value)
            .cornerRadius(12)
            .onTapGesture {
                action()
            }
            Spacer()
        }
    }
}
//        #Preview {
//            BigButton(text: "fgdg", color: .blue)
//        }


//
//  DescriptionItem.swift
//  Nickmate-Learn
//
//  Created by Valia Smolin on 09.07.2024.
//

import SwiftUI
struct DescriptionItem: View {
    var imageName: String
    var textName: String
    var isCommingSoon: Bool
    var body: some View {
        HStack {
            Spacer()
                .frame(width: 16)
            HStack {
                Image(imageName)
                    .resizable()

            }
            .frame(width: 24, height: 24, alignment: .center)
            Spacer()
                .frame(width: 12)
            Text(textName)
                .font(.body)
                .foregroundStyle(Color(red: 0.5, green: 0.5, blue: 0.5))
            if isCommingSoon {
                Text("скоро")
                .font(Font.custom("SF Pro", size: 12))
                .foregroundColor(
                    Color(red: 0.24, green: 0.24, blue: 0.26)
                    .opacity(0.3)
                )
                .frame(width: 41, height: 26, alignment: .topLeading)
                Spacer()
            }
            else {
                Spacer()
            }
            
        }
    }
}
#Preview {
    DescriptionItem(imageName: "heart_fill", textName: "Быть счастливым человеком", isCommingSoon: true)
}

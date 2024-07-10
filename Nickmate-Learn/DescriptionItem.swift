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
    var body: some View {
        HStack {
            Spacer()
                .frame(width: 16)
            HStack {
                Image(imageName)
                    .resizable()

            }
            .frame(width: 24, height: 24, alignment: .center)
            Text(textName)
                .font(.body)
                .foregroundStyle(Color(red: 0.5, green: 0.5, blue: 0.5))
            Spacer()
        }
    }
}
#Preview {
    DescriptionItem(imageName: "heart_fill", textName: "Быть счастливым человеком")
}

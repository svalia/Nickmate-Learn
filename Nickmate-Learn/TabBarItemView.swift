//
//  TabBarItemView.swift
//  Nickmate-Learn
//
//  Created by Valia Smolin on 13.07.2024.
//

import SwiftUI
struct TabBarItemView: View {
    var body: some View {
        HStack {
            VStack{
                Image(systemName: "homekit")
                    .resizable()
                    .renderingMode()
            }
        }
    }
}
#Preview {
    TabBarItemView()
}

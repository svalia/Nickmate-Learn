//
//  TabBarItemView.swift
//  Nickmate-Learn
//
//  Created by Valia Smolin on 13.07.2024.
//

import SwiftUI
struct TabBarItemView: View {
    enum TypeOfTab {
        case iconText
        case icon
    }
    @State var tabType: TypeOfTab = .iconText
    var icon: String
    var text: String //как убрать из инициализатора, когlа тип .icon
    
    
    var body: some View {
        switch tabType {
        case .iconText:
            VStack{
                HStack {
                    Image(systemName: icon)
                    //                        .resizable()
                        .frame(width: 20, height: 17.5974)
                        .padding(.all, 1)
                        .symbolRenderingMode(.palette)
                        .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
                        .shadow(color: .clear, radius: 0)
                }
                .frame(width: 24, height: 24, alignment: .center)
                
                Text(text)
                    .font(
                        Font.custom("SF Pro", size: 10)
                            .weight(.medium)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
                    .shadow(color: .clear, radius: 0)
            }
        case .icon:
            VStack{
                HStack {
                    Image(systemName: icon)
                        .resizable()
                        .frame(width: 41.21875, height: 41.20313)
                        .padding(.all, 1)
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.white, .blue)
                        .shadow(color: .clear, radius: 0)
                }
                .frame(width: 48, height: 40, alignment: .center)
            }
        }
        
    }
}



#Preview {
    //    TabBarItemView(icon: "house", text: "Дела")
    TabBarItemView(tabType: .icon, icon: "plus.circle.fill", text: "kj")
}

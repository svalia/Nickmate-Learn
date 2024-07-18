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
    var isChooseScreen: Bool = false
    var icon: String
    var text: String = ""
    
    
    var body: some View {
        switch tabType {
        case .iconText:
            VStack (alignment: .center){
                HStack (alignment: VerticalAlignment.top) {
                    Image(isChooseScreen ? "\(icon)Active" : icon)
//                        .resizable()
                        .frame(width: 20, height: 17.5974)
                        .padding(.all, 1)
                        .symbolRenderingMode(.monochrome)
                        .shadow(color: .clear, radius: 0)
                }
                .frame(width: 28, height: 28, alignment: .center)
                
                Text(text)
                    .font(
                        Font.custom("SF Pro", size: 10)
                            .weight(.medium)
                    )
                    .multilineTextAlignment(.center)
                    .shadow(color: .clear, radius: 0)
            }
            .foregroundStyle(isChooseScreen ? .blue : Color(red: 0.6, green: 0.6, blue: 0.6))
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
                .frame(width: 48, height: 60, alignment: .center)//
            }
        }
        
    }
}



#Preview {
    //    TabBarItemView(icon: "house", text: "Дела")
    TabBarItemView(tabType: .iconText, isChooseScreen: true, icon: "More", text: "Еще")
}

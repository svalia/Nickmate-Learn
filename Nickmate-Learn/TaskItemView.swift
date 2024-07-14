//
//  TaslItemView.swift
//  Nickmate-Learn
//
//  Created by Valia Smolin on 14.07.2024.
//

import SwiftUI
struct TasktemView: View {
    enum StatusLits {
        case todo
        case done
    }
    var status: StatusLits = .todo
    var withGoal: Bool = false
    var withSphere: Bool = false
    var assign: Bool = false
    var daylyGoal: Bool = false
    var focusMode: Bool = false
    var body: some View {
        HStack {
            Button(action: {
                var isChecked: Bool = false
                isChecked.toggle()// do when checked / unchecked
                //...
            }) {
                ScrollView (.horizontal, showsIndicators: false) {
                    LazyHStack
                    {
                        HStack(alignment: .center, spacing: 10) {
                            
                            Rectangle()
                                .fill(Color.white)
                                .frame(width:20, height:20, alignment: .center)
                                .cornerRadius(15)
                                .shadow(radius: 0)
                            Text("Todo  item 1")
                                .font(Font.custom("Poppins", size: 12))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                            Spacer()
                        }
                        .frame(minWidth: 335)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 14)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .cornerRadius(10)
                        .shadow(color: .black.opacity(0.25), radius: 10, x: 0, y: 4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .inset(by: 0.5)
                                .stroke(Color(red: 0.9, green: 0.9, blue: 0.92), lineWidth: 1)
                            
                        )
                HStack (spacing: 16) {
                    HStack(alignment: .center, spacing: 10) {
                        Image(systemName: "calendar")
                            .foregroundStyle(.white)
                    }
                    .padding(8)
                    .frame(width: 32, height: 32, alignment: .center)
                    .background(Color(red: 0, green: 0.48, blue: 1))
                    
                    .cornerRadius(10)
                    HStack(alignment: .center, spacing: 10) {
                        Image(systemName: "trash")
                            .foregroundStyle(.white)
                    }
                    .padding(8)
                    .frame(width: 32, height: 32, alignment: .center)
                    .background(Color(red: 0, green: 0.48, blue: 1))
                    
                    .cornerRadius(10)
                }
                .padding(.leading,16)
                .padding(.trailing,16)
                    }
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                    .frame(width: 32, alignment: .leading)
                }
            }
        }
    }
}

#Preview {
    TasktemView()
}

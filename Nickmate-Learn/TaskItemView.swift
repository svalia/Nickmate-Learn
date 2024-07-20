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
    var goalTitle: String?
    var status: StatusLits = .todo
    var sphereTitle: String?
    var assign: Bool = false
    var daylyGoal: Bool = false
    var focusMode: Bool = false
    @State var isChecked: Bool = false
    var body: some View {
        VStack{
            HStack {
                Button(action: {
                    
                    //                isChecked.toggle()// do when checked / unchecked
                    //...
                }) {
                    ScrollView (.horizontal, showsIndicators: false) {
                        LazyHStack
                        {
                            HStack(alignment: .center, spacing: 10) {
                                    Image(isChecked ? "ChekedCircle" : "EmptyCircle")
                                        .onTapGesture {
                                            withAnimation(.easeInOut(duration: 0.1)) {
                                                isChecked.toggle()
                                            }
                                            self.vibrate()
                                        }
                                VStack (alignment: .leading, spacing: 4) {
                                    if let goalTitle {
                                        HStack {
                                            Text(goalTitle)
                                                .font(.caption)
                                                .fontWeight(.semibold)
                                                .multilineTextAlignment(.leading)
                                                .foregroundStyle(isChecked ? .gray : .blue.opacity(0.8))
                                                .lineLimit(1)
                                            Spacer()
                                        }
                                    }
                                    HStack (alignment: .top, spacing: 2) {
                                        if goalTitle != nil {
                                            HStack {
                                                Image (systemName: "arrow.turn.down.right")
                                                    .resizable()
                                                    .frame(width:9.26, height:7.88)
                                                    .foregroundStyle(.green.opacity(0.7))
                                            }
                                        .frame (width:12, height:12, alignment: .center)
                                        }
                                        if isChecked {
                                            Text("Ресерч проблем связанных с хранением файлов у Бренд-менеджеровРесерч проблем связанных с хранением файлов у Бренд-менеджеров")
                                                .font(Font.custom("Poppins", size: 16))
                                                .multilineTextAlignment(.leading)
                                                .foregroundColor(.gray)
//                                                .frame(width: 260)
                                                .strikethrough()
                                            //                                        .frame(maxHeight: 40)
                                                .lineLimit(1)
                                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                        }
                                        else {
                                            Text("Ресерч проблем связанных с хранением файлов у Бренд-менеджеровРесерч проблем связанных с хранением файлов у Бренд-менеджеров")
                                                .font(Font.custom("Poppins", size: 16))
                                                .multilineTextAlignment(.leading)
                                                .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                                                .frame(width: 260)
                                                .lineLimit(3)
                                        }
                                            
                                        Spacer()
                                    }
                                    if isChecked == false {
                                        HStack {
                                            if let sphereTitle {
                                                HStack {
                                                    Text(sphereTitle)
                                                        .font(.caption)
                                                        .fontWeight(.semibold)
                                                        .multilineTextAlignment(.center)
                                                        .foregroundStyle(.gray.opacity(0.9))
                                                        .zIndex(1)
                                                }
                                            }
                                            Spacer()
                                            HStack (spacing: 10) {
                                                if assign {
                                                    HStack{
                                                        Image("imgava")
                                                    }
                                                }
                                                if daylyGoal {
                                                    HStack{
                                                        Image("flaggoal")
                                                    }
                                                }
                                                if focusMode {
                                                    HStack{
                                                        Image("focused")
                                                    }
                                                }
                                            }
                                        }
//                                        .padding(.top, assign || daylyGoal || focusMode ? 4 : 0)
                                    }
                                }
                                Spacer()
                            }
                            .frame(minWidth: 335)
                            .padding(.horizontal, 12)
                            .padding(.vertical, 14)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color(red: 0.9, green: 0.9, blue: 0.92), lineWidth: 1)
                                    )
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                                
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
                                .background(.red)
                                
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
//            .background(.white)
        }
        .background(.clear)
        .compositingGroup()
        .shadow(color: .black.opacity(0.02), radius: 5, x: 10, y: 10)
        
    }
    func vibrate() {
            // Используем UIImpactFeedbackGenerator для создания вибрации
            let generator = UIImpactFeedbackGenerator(style: .medium)
            generator.impactOccurred()
        }
}

#Preview {
//    TasktemView(goalTitle: "Gola", sphereTitle: "sdsdf", assign: true, daylyGoal: true, focusMode: true, isChecked: true)
//    TasktemView(goalTitle: "Gola", sphereTitle: "sdsdf", assign: false, daylyGoal: false, focusMode: false, isChecked: true)
    TasktemView(assign: false, daylyGoal: false, focusMode: false, isChecked: true)
}

//
//  ContentView.swift
//  Test
//
//  Created by Neosoft on 24/11/25.
//

import SwiftUI

//struct MyModifier: ViewModifier{
//    func body(content: Content) -> some View{
//        content
//            .font(Font.system(size: 100).weight(.semibold))
//            .foregroundColor(Color.blue)
//    }
//}


struct ContentView: View {
    var date = Date()
    var time = Timer()
    @State var title: String = "Title"
    
    var body: some View {
        VStack {
//            Text("\(date)")
//         //   Text(date, style: .timer)
//
//            Text("Hello world")
//                .font(.title)
//                .fontWeight(.bold)
//                .shadow(radius: 1, x: 20, y: 20)
//
//            Text("Shadow")
//                .shadow(radius: 10)
//                .padding(.top, 10)
//                Image("testImage")
//                    .resizable()
//                    .frame(width: 200, height: 200)
//                    .scaledToFit()
//                    .padding()
//                    .blur(radius: 5)
//            Image(systemName: "dot.radiowaves.forward", variableValue: 0.6)
//                .font(.largeTitle)
//            Image(systemName: "globe")
//                .onAppear {
//                    print("On appear called")
//                }
//                .modifier(MyModifier())
            
//            VStack{
//                HStack{
//                    Text(" ")
//                    Image(systemName: "chevron.left")
//                        .font(Font.system(size: 22).bold())
//                        .foregroundStyle(.blue)
//                    Spacer()
//                    Text("Navigation Title")
//                        .frame(alignment: .center)
//                        .font(Font.system(size: 22).weight(.medium))
//                        .foregroundStyle(.blue)
//                    Spacer()
//                }
//                Spacer()
//
//            }
//            HStack{
//                Text("Hello there wkdjwedewodew jewdnoewdjekndewod d wdnewod")
//                    .padding()
//                    .lineLimit(1)
//                Image(systemName: "cloud")
//                    .font(Font.title)
//                Text("Hello there wndkjewndkjd")
//                    .padding()
//                    .lineLimit(1)
//                    .layoutPriority(1)
//            }
            
           //Alignment guide
//            HStack(alignment: .alignComputer, spacing: 10){
//                Image("testImage")
//                    .resizable()
//                    .frame(width: 100, height: 100, alignment: .center)
//                    .alignmentGuide(VerticalAlignment.center) { dimention in
//                        return dimention[VerticalAlignment.center] + 18
//                    }
//                Image("testImage")
//                    .resizable()
//                    .frame(width: 100, height: 100, alignment: .center)
//                Image("testImage")
//                    .resizable()
//                    .frame(width: 100, height: 100, alignment: .center)
//            }
            
//            Grid{
//                Group{
//                    GridRow {
//                        Image(systemName: "phone")
//                            .resizable()
//                            .frame(width: 100, height: 100, alignment: .center)
//                            .background(.yellow)
//                        Image(systemName: "phone")
//                            .resizable()
//                            .frame(width: 100, height: 100, alignment: .center)
//                            .background(.yellow)
//                    }
//                    GridRow {
//                        Image(systemName: "phone")
//                            .resizable()
//                            .frame(width: 100, height: 100, alignment: .center)
//                            .background(.red)
//                        Image(systemName: "phone")
//                            .resizable()
//                            .frame(width: 100, height: 100, alignment: .center)
//                            .background(.red)
//                    }
//                }
//            }
    
            VStack {
                Text(title)
                Button {
                    title = "Changed title"
                } label: {
                    Text("Change title")
                }
            }
            
           
            
        }
//        .safeAreaInset(edge: .bottom) {
//            HStack{
//                Spacer()
//                Text("Tab bar")
//                    .padding()
//                Spacer()
//            }.background(.yellow)
//
//        }
        
    
       
    }
}

extension VerticalAlignment {
    enum ComputerAligment: AlignmentID {
        static func defaultValue(in dimention: ViewDimensions) -> CGFloat {
            return dimention[VerticalAlignment.center]
        }
    }
    static let alignComputer = VerticalAlignment(ComputerAligment.self)
}

#Preview {
    ContentView()
}

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
//    @State var title: String = "Example"
//    @State var textField: String = ""
    @State var toggle: Bool = false
    @State var text: String = "Default Title"
    @State var textFieldInputs: String = ""
    
    var currency = 30.8989
    
    
    var body: some View {
        VStack {
            
//            Print Date and time
            Text(date.formatted(date: .abbreviated, time: .omitted))
            
//            print currency in US Doller form as per code
            Text(currency.formatted(.currency(code: "USD")))
            
//            print timer countdown
            Text(date, style: .timer)
            
            Text("Check Font")
                .font(Font.custom("ChristmasMarketRegular", fixedSize: 100))
                
//            Nested Text
            Text("Hello \(Text("World").underline().font(.title))").font(.title)
            
//            All the modifers at one text view
            Text("Hello World")
                .font(.title)
                .underline()
                .fontWeight(.heavy)
                .padding(EdgeInsets(top: 12, leading: 0, bottom: 5, trailing: 0))
                .shadow(radius: 2, x: 2, y: 2)
                
            
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
    
//            VStack {
//                Text(title)
//                TextField("Enter", text: $textField)
//                    .padding()
//                Button {
//                    title = textField
//                } label: {
//                    Text("Change title")
//                }
//            }
            
            
           //Toggle
//            VStack{
//                Text(text)
//                Button {
//                    toggle.toggle()
//                    text = toggle ? "On" : "Off"
//                } label: {
//                    Text("ToggleButton")
//                }
//            }
            
            //Bi directional Binding
            //$ is used for bi-directional binding
            
            
            //Binding
            
            
//            HeaderView(title: text, text: $textFieldInputs)
//            
//            Button {
//                text = textFieldInputs
//                textFieldInputs = ""
//            } label: {
//                Text("Change Title")
//            }
            
            //Wrapped Values = This property returns the value manged by @binding property
            //ProjectedValues = This property is returns the structure of type binding that created the bidrectional binding with the view
            
//            VStack {
//                Text(text)
//                    .background(toggle ? Color.red : Color.clear)
//                    .padding()
//                Button("Press") {
//                    toggleBackgroundColor()
//                }
//            }
            
            
            
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
    
    func toggleBackgroundColor() {
        toggle.toggle()
    }
}

struct HeaderView: View {
    
    var title: String = ""
    @Binding var text: String
    
    var body: some View {
        VStack {
            Text(title)
                .padding()
            TextField("Enter Something!", text: $text)
                .textFieldStyle(.roundedBorder)
                .padding()

        }
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

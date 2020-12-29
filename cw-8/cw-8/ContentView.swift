//
//  ContentView.swift
//  cw-8
//
//  Created by ahmad alburaimi on 29/12/2020.
//

import SwiftUI

struct ContentView: View {
    @State var counters=[0,0,0]
    
    var body: some View {
        VStack(alignment: .trailing){
            ThekerButton(counter: $counters[0], theker: "أستغفر الله العظيم")
            ThekerButton(counter: $counters[1], theker: "سبحان الله وبحمده ")
            ThekerButton(counter: $counters[2], theker: "الحمدلله")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ThekerButton: View {
    @Binding var counter: Int
    let theker: String
    
    var body: some View {
        HStack{
            Text(theker).font(.largeTitle)
            Button(action: {
                counter+=1
            }, label: {
                Text("\(counter)").frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(.white).background(Color.green).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            })
            
        }
    }
}

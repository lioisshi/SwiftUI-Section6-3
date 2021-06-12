//
//  ContentView.swift
//  SwiftUI-Section6-3
//
//  Created by Hiroaki Ishiga on 2021/06/12.
//

import SwiftUI
//p303
struct ContentView: View {
    //Modalが開いているかを管理する変数
    @State var isModal: Bool = false
    @State var counter: Int = 0
    var body: some View{
        Button(action: {
            isModal = true
        }){
            Text("Sheet テスト")
        }.sheet(isPresented: $isModal, onDismiss: {countUp()}){
            SomeView()
        }.disabled(counter >= 3)
        Text("回数: \(counter)")
            .font(.title)
            .padding()
    }
    func countUp(){
        counter += 1
    }
}
struct SomeView :View{
    var body :some View{
        VStack{
            Text("プレゼンテーション")
            //p201
            Image(systemName: "gift")
                .imageScale(.large)
                .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        SomeView()
    }
}


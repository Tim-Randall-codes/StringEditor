//
//  ContentView.swift
//  StringEditor
//
//  Created by Tim Randall on 13/6/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewRouter: ViewRouter
    @State var hi: String = ""
    @State var result: String = ""
    func sayHi() {
        if select == 0 {
            result = hi.uppercased()
        }
        else if select == 1 {
            for _ in hi {
                result += "*"
            }
        }
        else {
            result = hi.lowercased()
        }
    }
    var body: some View {
        VStack{
            Text(result)
                .padding()
            TextField("put word here", text: $hi)
            Button("Push me", action: {
                sayHi()
            })
            Button("select edit", action: {
                viewRouter.currentPage = .page2
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}

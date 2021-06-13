//
//  ContentView2.swift
//  StringEditor
//
//  Created by Tim Randall on 13/6/21.
//

import SwiftUI

struct ContentView2: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        VStack {
            Button ("option 1", action: {
                select = 0
            })
            Button ("option 2", action: {
                select = 1
            })
            Button ("option 3", action: {
                select = 2
            })
            Button ("back to edit", action: {
                viewRouter.currentPage = .page1
        })
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2(viewRouter: ViewRouter())
    }
}

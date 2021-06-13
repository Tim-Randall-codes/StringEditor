//
//  StringEditorApp.swift
//  StringEditor
//
//  Created by Tim Randall on 13/6/21.
//

import SwiftUI

@main
struct StringEditorApp: App {
    @StateObject var viewRouter = ViewRouter()
    var body: some Scene {
        WindowGroup {
            MotherView(viewRouter: viewRouter)
        }
    }
}

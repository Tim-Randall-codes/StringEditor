//
//  ViewRouter.swift
//  StringEditor
//
//  Created by Tim Randall on 13/6/21.
//

import Foundation
import SwiftUI

class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .page1
}

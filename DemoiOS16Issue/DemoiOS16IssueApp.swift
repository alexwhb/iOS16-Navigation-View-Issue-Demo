//
//  DemoiOS16IssueApp.swift
//  DemoiOS16Issue
//
//

import SwiftUI
import LNPopupUI

@main
struct DemoiOS16IssueApp: App {
    
    @State var isPopupOpen: Bool = false
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .popup(isBarPresented: .constant(true), isPopupOpen: $isPopupOpen) {
                    NavigationView {
                        NavigationLink(destination: {Color.blue}, label: {
                            Text("Click Me")
                        }).navigationTitle("Test")
                        Color.red
                    }.frame(width: .infinity, height: .infinity)
                }
                .popupInteractionStyle(.drag)
                .popupBarProgressViewStyle(.none)
        }
    }
}

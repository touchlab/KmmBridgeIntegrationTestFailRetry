//
//  KmmBridgeIntegrationTestCocoapodsApp.swift
//  KmmBridgeIntegrationTestCocoapods
//
//  Created by Russell Wolf on 10/11/22.
//

import SwiftUI
import notshared

@main
struct KmmBridgeIntegrationTestCocoapodsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    let test = Test()
                    print("\(test)")
                }
        }
    }
}

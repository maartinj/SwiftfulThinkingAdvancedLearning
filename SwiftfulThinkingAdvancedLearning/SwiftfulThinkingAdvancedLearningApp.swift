//
//  SwiftfulThinkingAdvancedLearningApp.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Marcin Jędrzejak on 21/02/2025.
//

import SwiftUI

@main
struct SwiftfulThinkingAdvancedLearningApp: App {
    var body: some Scene {
        WindowGroup {
            ProtocolsBootcamp(colorTheme: DefaultColorTheme(), dataSource: DefaultDataSource())
        }
    }
}

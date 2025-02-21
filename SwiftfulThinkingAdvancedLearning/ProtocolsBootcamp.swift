//
//  ProtocolsBootcamp.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Marcin Jędrzejak on 21/02/2025.
//

import SwiftUI

struct DefaultColorTheme: ColorThemeProtocol {
    let primary: Color = .blue
    let secondary: Color = .white
    let tertiary: Color = .gray
}

struct AlternativeColorTheme: ColorThemeProtocol {
    var primary: Color = .red
    var secondary: Color = .white
    var tertiary: Color = .green
}

struct AnotherColorTheme: ColorThemeProtocol {
    var primary: Color = .blue
    var secondary: Color = .red
    var tertiary: Color = .purple
}

protocol ColorThemeProtocol {
    var primary: Color { get }
    var secondary: Color { get }
    var tertiary: Color { get }
}

protocol ButtonTextProtocol {
    var buttonText: String { get }
}

protocol ButtonPressedProtocol {
    func buttonPressed()
}

protocol ButtonDataSourceProtocol: ButtonTextProtocol, ButtonPressedProtocol {

}

class DefaultDataSource: ButtonDataSourceProtocol {
    var buttonText: String = "Protocols are awesome!"

    func buttonPressed() {
        print("Button was pressed!")
    }
}

class AlternativeDataSource: ButtonTextProtocol {
    var buttonText: String = "Protocols are lame."
}

struct ProtocolsBootcamp: View {

    let colorTheme: ColorThemeProtocol
    let dataSource: ButtonDataSourceProtocol

    var body: some View {
        ZStack {
            colorTheme.tertiary
                .ignoresSafeArea()

            Text(dataSource.buttonText)
                .font(.headline)
                .foregroundColor(colorTheme.secondary)
                .padding()
                .background(colorTheme.primary)
                .cornerRadius(10)
                .onTapGesture {
                    dataSource.buttonPressed()
                }
        }
    }
}

#Preview {
    ProtocolsBootcamp(colorTheme: DefaultColorTheme(), dataSource: DefaultDataSource())
}

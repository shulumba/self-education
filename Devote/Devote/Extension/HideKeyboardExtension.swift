//
//  HideKeyboardExtension.swift
//  Devote
//
//  Created by Igor Shulumba on 19.11.2024.
//

import SwiftUI

#if canImport(UIKit)

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

#endif

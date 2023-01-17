//
//  View_ext.swift
//  LoginView
//
//  Created by Amer Alyusuf on 17/01/2023.
//

import SwiftUI

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

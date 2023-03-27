//
//  ProfileFormView.swift
//  DeltaPilot
//
//  Created by Jonathan Forsyth on 11/14/22.
//

import SwiftUI
import StoreKit

struct ProfileFormView: View {

    @Environment(\.colorScheme) var colorScheme
    @Binding var tabSelection: Int
    
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Personal Information:")
                        .foregroundColor(colorScheme == .dark ? Color.white: Color.black)
                        .font(.body)
                        .bold()) {
                            }
                        }
                    .listRowBackground(Color.blue)
                    .foregroundColor(.white)
                }
                .navigationTitle("Employee Info")
            }
        .navigationViewStyle(StackNavigationViewStyle())
        .accentColor(Color(.label))
    }
}

struct ProfileFormView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileFormView(tabSelection: .constant(1))
    }
}

//
//  InvestFormView.swift
//  DeltaPilot
//
//  Created by Jonathan Forsyth on 11/14/22.
//

import SwiftUI
import StoreKit

struct InvestFormView: View {
    @Environment(\.colorScheme) var colorScheme
    @Binding var tabSelection: Int
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Investment Information:")
                        .foregroundColor(colorScheme == .dark ? Color.white: Color.black)
                        .font(.body)
                        .bold()) {
                            }
                        }
                    .listRowBackground(Color.blue)
                    .foregroundColor(.white)
                }
                .navigationTitle("Investment Information")
            }
        .navigationViewStyle(StackNavigationViewStyle())
        .accentColor(Color(.label))
    }
}

struct InvestFormView_Previews: PreviewProvider {
    static var previews: some View {
        InvestFormView(tabSelection: .constant(2))    }
}

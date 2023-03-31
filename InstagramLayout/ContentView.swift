//
//  ContentView.swift
//  InstagramLayout
//
//  Created by Samir Pandey on 3/31/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TopView()
            PostView()
            Divider()
            TabView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

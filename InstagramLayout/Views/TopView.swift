//
//  TopView.swift
//  InstagramLayout
//
//  Created by Samir Pandey on 3/31/23.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        HStack{
            HStack{
                Image(iconsItems.logo)
                Image(systemName: "chevron.down")
                    .resizable()
                    .frame(width: 8,height: 4)
            }
            Spacer()
            HStack{
                Image(iconsItems.add)
                Image(iconsItems.heart)
                Image(iconsItems.messenger)
            }
        }
        .padding(.horizontal)
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}

//
//  TabView.swift
//  InstagramLayout
//
//  Created by Samir Pandey on 3/31/23.
//

import SwiftUI

struct TabView: View {
    var body: some View {
        HStack{
            Image(iconsItems.home)
                .resizable()
                .scaledToFit()
                .frame(width: 22,height: 22)
            Spacer()
            Image(iconsItems.search)
                .resizable()
                .scaledToFit()
                .frame(width: 22,height: 22)
            Spacer()
            Image(iconsItems.reels)
                .resizable()
                .scaledToFit()
                .frame(width: 22,height: 22)
            Spacer()
            Image(iconsItems.shop)
                .resizable()
                .scaledToFit()
                .frame(width: 22,height: 22)
            Spacer()
            Image(systemName: iconsItems.profile)
              .resizable()
              .frame(width: 20, height: 20, alignment: .center)
              .clipShape(Circle())
              .padding(.top, 3)
              .background(Circle().stroke(Color.black, lineWidth: 1.4))
        }
        .padding(.horizontal,25)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}

//
//  PostView.swift
//  InstagramLayout
//
//  Created by Samir Pandey on 3/31/23.
//

import Foundation
import SwiftUI

struct PostView: View {
    
    var name = ["Samir", "Ashok", "Sagar"]
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            StoryView()
            Divider()
            
            ForEach(postItems) { item in
                VStack{
                    HStack{
                        Image(item.icon)
                            .resizable()
                            .frame(width: 32,height: 32)
                            .clipShape(Circle())
                            .background(
                                Circle()
                                    .stroke(.linearGradient(colors: [.red , .yellow], startPoint: .topLeading, endPoint: .bottomLeading),lineWidth: 2))
                        VStack(alignment: .leading) {
                            Text("\(item.name)")
                                .font(.caption2)
                                .bold()
                            
                            Text("\(item.city)")
                                .font(.caption2)
                            
                        }
                        Spacer()
                            
                        Image(iconsItems.more)
                            .padding(4)
                    }
                    .padding(.leading,12)
                    .padding(.trailing,12)
                    
                    Image(item.post)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    HStack{
                        Image(iconsItems.heart)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24,height: 24)
                        
                        Image(iconsItems.comment)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24,height: 24)
                        
                        Image(iconsItems.share)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24,height: 24)
                        Spacer()
                        Image(iconsItems.carouseldots)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30,height: 30)
                        
                        Spacer()
                        
                        Image(iconsItems.bookmark)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24,height: 24)
                    }
                    .padding(.horizontal,10)
                    HStack(spacing:2){
                        Image(photoItems.samir)
                            .resizable()
                            .frame(width: 14,height: 14)
                            .clipShape(Circle())
                        
                        Text("Liked by")
                            .font(.caption2)
                            
                        Text(name.randomElement()!)
                            .font(.caption2)
                            .bold()
                         Text(" and")
                            .font(.caption2)
                         Text(" others")
                            .font(.caption2)
                            .bold()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 10)
                    
                    HStack{
                        Text("See all 4 comments")
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 12)
                    
                    HStack{
                        Image(photoItems.sagar)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20,height: 20)
                        
                        Text("Add a comment...")
                            .font(.caption2)
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        Text("❤️  🙌")
                            .font(.system(size: 10, weight: .regular))
                        
                        Image(systemName: "plusminus.circle")
                            .font(.system(size: 10, weight: .regular))
                            .foregroundColor(.gray)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 12)
                    
                    HStack{
                        Text("2 hours ago")
                            .font(.caption2)
                            .foregroundColor(.gray)
                        
                        Text("")
                            .font(.caption2)
                            .frame(width: 4)
                            .offset( y: -2)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.horizontal,.bottom], 12)
                    
                }
            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}

//
//  StoryView.swift
//  InstagramLayout
//
//  Created by Samir Pandey on 3/31/23.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack{
                ForEach(storyItems){ item in
                    VStack(alignment: .center) {
                        if item.id == 1 {
                            HStack{
                                Image(item.photo)
                                    .resizable()
                                    .frame(width: 62,height: 62)
                                    .clipShape(Circle())
                                    .overlay {
                                        Image(systemName: "plus.circle.fill")
                                            .resizable()
                                            .frame(width: 18,height: 18)
                                            .foregroundStyle(.white,.blue)
                                            .symbolRenderingMode(.palette)
                                            .position(x:50,y: 45)
                                            .background(
                                                Circle()
                                                    .fill(Color.white)
                                                    .frame(width: 24,height: 24)
                                                    .position(x: 50,y: 45)
                                            )
                                    }
                            }
                            Text("Your story")
                                .font(.caption2)
                                
                        } else {
                            Image(item.photo)
                                .resizable()
                                .frame(width: 60,height: 60)
                                .clipShape(Circle())
                                .padding(4)
                                .aspectRatio(contentMode: .fit)
                                .background(
                                    Circle()
                                        .stroke(.linearGradient(colors: [.red,.yellow], startPoint: .topLeading, endPoint: .bottomLeading),lineWidth: 2)
                                )
                            Text("\(item.name)")
                                .font(.caption2)
                        }
                    }
                    .frame(height: 100)
                    .padding(.horizontal, 4)
                }
            }
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}

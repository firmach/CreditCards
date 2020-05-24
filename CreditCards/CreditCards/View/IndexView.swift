//
//  IndexView.swift
//  CreditCards
//
//  Created by Roman Churkin on 24.05.2020.
//  Copyright © 2020 Firmach. All rights reserved.
//

import SwiftUI


/// Selected index view
struct IndexView: View {
    
    private var count: Int = 0
    
    // MARK: - Animatable
    
    var selectedIndex: Int = 0
    var animatableData: Int {
        get { return selectedIndex }
        set { selectedIndex = newValue }
    }
    
    
    // MARK: - Body
    
    var body: some View {
        
        let size: CGFloat = 10
        let selectedScaleFactor: CGFloat = 2.5
        
        return
            VStack(spacing: 0) {
                ForEach((0..<count), id: \.self) {
                    RoundedRectangle(cornerRadius: 2)
                        .fill($0 == self.selectedIndex ? Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)) : Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3)))
                        .frame(width: size, height: 2)
                        .scaleEffect(x: $0 == self.selectedIndex ? selectedScaleFactor : 1.0,
                                     y: $0 == self.selectedIndex ? selectedScaleFactor : 1.0,
                                     anchor: .center)
                        .padding(.vertical, ($0 == self.selectedIndex ? 16 : 8))
                }
        }
    }
    
    
    // MARK: - Modifiers
    
    func select(at index: Int, in count: Int) -> Self {
        var indexView = self
        indexView.selectedIndex = index
        indexView.count = count
        return indexView
    }
    
}


private struct IndexViewPreview: View {
    
    let count = 4
    
    @State var index = 0
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color(#colorLiteral(red: 0.1529411765, green: 0.1725490196, blue: 0.2078431373, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack {
                
                HStack {
                    Spacer()
                    Button(action: {
                        withAnimation {
                            self.index = (self.index + self.count - 1) % self.count
                        }
                    }) {
                        Text("PREV")
                    }
                    .padding(.horizontal, 32)
                    .padding(.vertical, 12)
                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.1)))
                    .cornerRadius(4)
                    Button(action: {
                        withAnimation {
                            self.index = (self.index + 1) % self.count
                        }
                    }) {
                        Text("NEXT")
                    }
                    .padding(.horizontal, 32)
                    .padding(.vertical, 12)
                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.1)))
                    .cornerRadius(4)
                    
                    Spacer()
                }
                .padding()
                
                Text("\(index)")
                    .foregroundColor(Color.white)
                    .font(.title)
                    .padding()
                Spacer()
            }
            
            IndexView() .select(at: index, in: count)
        }
    }
}


struct IndexViewPreview_Previews: PreviewProvider {
    static var previews: some View {
        IndexViewPreview()
    }
}

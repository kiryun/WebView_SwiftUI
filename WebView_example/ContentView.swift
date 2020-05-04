//
//  ContentView.swift
//  WebView_example
//
//  Created by 김기현 on 2020/04/29.
//  Copyright © 2020 wimes. All rights reserved.
//


//https://forums.developer.apple.com/thread/117348
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable{
    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

struct ContentView: View {
    var body: some View {
        WebView(request: URLRequest(url: URL(string: "https://www.apple.com")!))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

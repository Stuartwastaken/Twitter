//
//  TwitterApp.swift
//  Twitter
//
//  Created by Stuart Ray on 5/19/22.
//

import SwiftUI
import Firebase

@main
struct TwitterApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
               ContentView()
            }
            .environmentObject(viewModel)
        }
    }
}


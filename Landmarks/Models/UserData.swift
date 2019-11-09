//
//  UserData.swift
//  Landmarks
//
//  Created by ruixinyi on 2019/11/9.
//  Copyright © 2019 ruixinyi. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}

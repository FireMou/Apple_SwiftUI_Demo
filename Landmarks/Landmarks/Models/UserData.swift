//
//  UserData.swift
//  Landmarks
//
//  Created by jxrt on 2020/6/10.
//  Copyright © 2020 atonementcoder. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = true
    @Published var landmarks = landmarkData
}

import SwiftUI

class AppTheme: ObservableObject {
    @Published var primaryColor: Color
    @Published var secondaryColor: Color
    
    init(primaryColor: Color, secondaryColor: Color) {
        self.primaryColor = primaryColor
        self.secondaryColor = secondaryColor
    }
    
    static let light = AppTheme(primaryColor: .blue, secondaryColor: .gray)
    static let dark = AppTheme(primaryColor: .yellow, secondaryColor: .black)
}


extension ColorScheme {
    var appTheme: AppTheme {
        switch self {
        case .light:
            return AppTheme.light
        case .dark:
            return AppTheme.dark
        @unknown default:
            return AppTheme.light
        }
    }
}

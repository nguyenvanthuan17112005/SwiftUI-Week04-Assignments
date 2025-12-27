import SwiftUI
enum UIComponentCategory: String, CaseIterable, Identifiable {
    case textImage = "Text & Image"
    case inputs = "Inputs"
    case controls = "Controls"
    case containers = "Containers"
    case layout = "Layout"
    case navigation = "Navigation"
    case misc = "Misc"
    var id: String { rawValue }
}

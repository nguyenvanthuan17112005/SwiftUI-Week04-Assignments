import SwiftUI


enum UIComponent: String, CaseIterable, Identifiable{
    case text, image
    case textField, secureField, toggle, slider, stepper, picker, datePicker
    case button, progress
    case list, scrollView, form
    case hStack, vStack, zStack, spacer, divider
    case navigationLink, sheet, alert
    case label, link, groupBox
    
    var id: String { rawValue }
    
}

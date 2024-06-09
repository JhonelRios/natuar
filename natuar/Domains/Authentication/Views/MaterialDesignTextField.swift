import SwiftUI
public struct MaterialDesignTextField: View {
    
    // MARK: - Properties
    
    // MARK: View protocol properties
    
    public var body: some View {
        ZStack {
            if isPassword {
                SecureField(placeholder, text: $text)
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 4.0, style: .continuous)
                        .stroke(borderColor, lineWidth: borderWidth))
                //                    .focused($focusField, equals: .textField)
                    .textInputAutocapitalization(autocapitalization)
            } else {
                TextField(placeholder, text: $text)
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 4.0, style: .continuous)
                        .stroke(borderColor, lineWidth: borderWidth))
                //                    .focused($focusField, equals: .textField)
                    .textInputAutocapitalization(autocapitalization)
            }
            
            HStack {
                ZStack {
                    Color(.white)
                        .cornerRadius(4.0)
                        .opacity(placeholderBackgroundOpacity)
                    
                    if !text.isEmpty {
                        Text(placeholder)
                            .foregroundColor(.white)
                            .colorMultiply(placeholderColor)
                        //                                            .animatableFont(size: placeholderFontSize)
                            .padding(2.0)
                        //                        .padding(.leading, 2)
                            .layoutPriority(1)
                    }
                }
                .padding([.leading], placeholderLeadingPadding)
                .padding([.bottom], placeholderBottomPadding)
                
                if !text.isEmpty { Spacer() }
            }
            //            HStack {
            //                VStack {
            //                    Spacer()
            //                    Text(hint)
            //                        .font(.system(size: 10.0))
            //                        .foregroundColor(.gray)
            //                        .padding([.leading], 10.0)
            //                }
            //                Spacer()
            //            }
        }
        .frame(maxWidth: .infinity, minHeight: 80)
        .onChange(of: text) {
//            if !text.isEmpty {
                withAnimation(.easeOut(duration: 0.1)) {
                    updateBorder()
                    updatePlaceholder()
                }
//            }
        }
    }
    
    // MARK: Private properties
    
    private let autocapitalization: TextInputAutocapitalization
    private let placeholder: String
    @State
    private var borderColor = Color.gray
    @State
    private var borderWidth = 1.0
    @Binding
    private var editing: Bool
    @FocusState
    private var focusField: Field?
    @Binding
    private var hint: String
    @State
    private var placeholderBackgroundOpacity = 0.0
    @State
    private var placeholderBottomPadding = 0.0
    @State
    private var placeholderColor = Color.gray
    @State
    private var placeholderFontSize = 16.0
    @State
    private var placeholderLeadingPadding = 2.0
    @Binding
    private var text: String
    @Binding
    private var valid: Bool
    
    private var isPassword: Bool
    
    private var onFocus: () -> Void
    
    // MARK: - Initialization
    
    /// Creates a Material Design inspired text field with an animated border and placeholder.
    /// - Parameters:
    ///   - text: The text field contents.
    ///   - placeholder: The placeholder string.
    ///   - hint: The field hint string.
    ///   - editing: Whether the field is in the editing state.
    ///   - valid: Whether the field is in the valid state.
    ///   - autocapitalization: The kind of autocapitalization behavior applied during text input.
    public init(_ text: Binding<String>,
                placeholder: String,
                hint: Binding<String>,
                editing: Binding<Bool>,
                valid: Binding<Bool>,
                autocapitalization: TextInputAutocapitalization = .sentences,
                onFocus: @escaping () -> Void = {},
                isPassword: Bool = false) {
        _text = text
        self.placeholder = placeholder
        _hint = hint
        _editing = editing
        _valid = valid
        self.autocapitalization = autocapitalization
        self.isPassword = isPassword
        self.onFocus = onFocus
    }
    
    // MARK: - Methods
    
    // MARK: Private methods
    
    private func updateBorder() {
        updateBorderColor()
        updateBorderWidth()
    }
    
    private func updateBorderColor() {
        if !valid {
            borderColor = .red
        } else if editing {
            borderColor = Color("TextFieldColor")
        } else {
            borderColor = .gray
        }
    }
    
    private func updateBorderWidth() {
        borderWidth = !text.isEmpty
        ? 2.0
        : 1.0
    }
    
    private func updatePlaceholder() {
        updatePlaceholderBackground()
        updatePlaceholderColor()
        updatePlaceholderFontSize()
        updatePlaceholderPosition()
    }
    
    private func updatePlaceholderBackground() {
        if !text.isEmpty {
            placeholderBackgroundOpacity = 1.0
        } else {
            placeholderBackgroundOpacity = 0.0
        }
    }
    
    private func updatePlaceholderColor() {
        if valid {
            placeholderColor = editing
            ? Color("TextFieldColor")
            : .gray
        } else if text.isEmpty {
            placeholderColor = editing
            ? .red
            : .gray
        } else {
            placeholderColor = .red
        }
        
    }
    
    private func updatePlaceholderFontSize() {
        if !text.isEmpty {
            placeholderFontSize = 10.0
        } else {
            placeholderFontSize = 16.0
        }
    }
    
    private func updatePlaceholderPosition() {
        if !text.isEmpty {
            placeholderBottomPadding = 40.0
            placeholderLeadingPadding = 8.0
        } else {
            placeholderBottomPadding = 0.0
            placeholderLeadingPadding = 8.0
        }
    }
    
    // MARK: -
    
    private enum Field {
        
        case textField
        
    }
    
}

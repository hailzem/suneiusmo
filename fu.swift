import SwiftUI

public static func shadow(
    color: Color = Color(.sRGBLinear, white: 0, opacity: 0.33),
    radius: CGFloat,
    x: CGFloat = 0,
    y: CGFloat = 0,
    blendMode: GraphicsContext.BlendMode = .normal,
    options: GraphicsContext.ShadowOptions = ShadowOptions()
) -> GraphicsContext.Filter {
    
    // Create a shadow filter with the provided parameters
    let shadowFilter = GraphicsContext.Filter.shadow(
        color: color,
        radius: radius,
        x: x,
        y: y,
        blendMode: blendMode,
        options: options
    )
    
    return shadowFilter
}

// Example usage:
struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.33), radius: 10, x: 5, y: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

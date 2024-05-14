import SwiftUI

struct ContentView: View {
    @State private var name = ""
    var body: some View {
        VStack(spacing: 30.0) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(name.isEmpty ? "Hello!" : "Hello, \(name)!")
                .foregroundStyle(.accent)
            TextField("Enter your name", text: $name)
                .multilineTextAlignment(.center)
                .frame(width: 200)
                .padding()
                .border(Color.pink, width: 1)
                .padding()
            Button("Tap me") {
                name = ""
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

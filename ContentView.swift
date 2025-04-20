import SwiftUI

struct ContentView: View {
    @StateObject private var client = MacBuddyClient()
    @State private var prompt = ""

    var body: some View {
        VStack(spacing: 16) {
            TextField("Ask iOSBuddy…", text: $prompt)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Send") {
                client.generate(prompt: prompt)
            }
            .buttonStyle(.borderedProminent)

            ScrollView {
                Text(client.lastReply.isEmpty
                     ? "Waiting for response..."
                     : client.lastReply)
                    .padding()
            }
        }
        .padding()
    }
} 
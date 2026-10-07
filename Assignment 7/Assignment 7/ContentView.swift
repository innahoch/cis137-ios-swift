//  Assignment #7
//  October 6 2026
//  Inna Hoch

import SwiftUI

extension VerticalAlignment {
    enum MyAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }

    static let myAlignment = VerticalAlignment(MyAlignment.self)
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, my name is Inna.")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
                .padding()

            HStack(alignment: .myAlignment) {

                VStack {
                    Image("Profile")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)

                    Text("Inna")
                        .alignmentGuide(.myAlignment) { d in
                            d[VerticalAlignment.center]
                        }
                }

                VStack {
                    Text("About Me")

                    Text("I am studying Computer and Information Science at SMC. I enjoy hiking with my family, painting, and traveling.")
                        .alignmentGuide(.myAlignment) { d in
                            d[VerticalAlignment.center]
                        }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

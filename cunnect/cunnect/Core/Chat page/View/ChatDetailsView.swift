import SwiftUI
struct ChatView: View {
    @State private var messageText = ""
    @State private var messages: [Message] = []
    struct ChatView: View {
        @State private var messageText = ""
        @State private var messages: [Message] = []
        
        var body: some View {
            VStack {
                List(messages) { message in
                    HStack {
                        if message.sender == "Me" {
                            Spacer()
                            Text(message.text)
                                .padding()
                                .foregroundColor(.white)
                                .backgstruct ChatView: View {
                                    @State private var messageText = ""
                                    @State private var messages: [Message] = []
                                    
                                    var body: some View {
                                        VStack {
                                            List(messages) { message in
                                                HStack {
                                                    if message.sender == "Me" {
                                                        Spacer()
                                                        Text(message.text)
                                                            .padding()
                                                            .foregroundColor(.white)
                                                            .background(Color.blue)
                                                            .cornerRadius(10)
                                                    } else {
                                                        Image("profile_image")
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fill)
                                                            .frame(width: 40, height: 40)
                                                            .clipShape(Circle())
                                                        
                                                        Text(message.text)
                                                            .padding()
                                                            .foregroundColor(.primary)
                                                            .background(Color(white: 0.95))
                                                            .cornerRadius(10)
                                                        
                                                        Spacer()
                                                    }
                                                }
                                            }
                                            .navigationBarTitle("Chat", displayMode: .inline)
                                            .toolbar {
                                                ToolbarItem(placement: .navigationBarLeading) {
                                                    Image(systemName: "person.crop.circle")
                                                        .font(.system(size: 24))
                                                        .foregroundColor(.blue)
                                                        .onTapGesture {
                                                            // Navigate to profile details view
                                                        }
                                                }
                                                
                                                ToolbarItem(placement: .navigationBarTrailing) {
                                                    Image(systemName: "info.circle")
                                                        .font(.system(size: 24))
                                                        .foregroundColor(.blue)
                                                        .onTapGesture {
                                                            // Navigate to chat details view
                                                        }
                                                }
                                            }
                                            
                                            HStack {
                                                TextField("Type your message here", text: $messageText)
                                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                                Button(action: sendMessage) {
                                                    Text("Send")
                                                        .fontWeight(.bold)
                                                }
                                            }
                                            .padding()
                                        }
                                    }
                                    
                                    func sendMessage() {
                                        if messageText == "" { return }
                                        
                                        let message = Message(text: messageText, sender: "Me")
                                        messages.append(message)
                                        
                                        // Add message to Core Data or other storage mechanism
                                        
                                        messageText = ""
                                    }
                                }

                                struct ChatView_Previews: PreviewProvider {
                                    static var previews: some View {
                                        ChatView()
                                    }
                                }
                            struct ChatView: View {
                                @State private var messageText = ""
                                @State private var messages: [Message] = []
                                
                                var body: some View {
                                    VStack {
                                        List(messages) { message in
                                            HStack {
                                                if message.sender == "Me" {
                                                    Spacer()
                                                    Text(message.text)
                                                        .padding()
                                                        .foregroundColor(.white)
                                                        .background(Color.blue)
                                                        .cornerRadius(10)
                                                } else {
                                                    Image("profile_image")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 40, height: 40)
                                                        .clipShape(Circle())
                                                    
                                                    Text(message.text)
                                                        .padding()
                                                        .foregroundColor(.primary)
                                                        .background(Color(white: 0.95))
                                                        .cornerRadius(10)
                                                    
                                                    Spacer()
                                                }
                                            }
                                        }
                                        .navigationBarTitle("Chat", displayMode: .inline)
                                        .toolbar {
                                            ToolbarItem(placement: .navigationBarLeading) {
                                                Image(systemName: "person.crop.circle")
                                                    .font(.system(size: 24))
                                                    .foregroundColor(.blue)
                                                    .onTapGesture {
                                                        // Navigate to profile details view
                                                    }
                                            }
                                            
                                            ToolbarItem(placement: .navigationBarTrailing) {
                                                Image(systemName: "info.circle")
                                                    .font(.system(size: 24))
                                                    .foregroundColor(.blue)
                                                    .onTapGesture {
                                                        // Navigate to chat details view
                                                    }
                                            }
                                        }
                                        
                                        HStack {
                                            TextField("Type your message here", text: $messageText)
                                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                            Button(action: sendMessage) {
                                                Text("Send")
                                                    .fontWeight(.bold)
                                            }
                                        }
                                        .padding()
                                    }
                                }
                                
                                func sendMessage() {
                                    if messageText == "" { return }
                                    
                                    let message = Message(text: messageText, sender: "Me")
                                    messages.append(message)
                                    
                                    // Add message to Core Data or other storage mechanism
                                    
                                    messageText = ""
                                }
                            }

                            struct ChatView_Previews: PreviewProvider {
                                static var previews: some View {
                                    ChatView()
                                }
                            }
                            struct ChatView: View {
                                @State private var messageText = ""
                                @State private var messages: [Message] = []
                                
                                var body: some View {
                                    VStack {
                                        List(messages) { message in
                                            HStack {
                                                if message.sender == "Me" {
                                                    Spacer()
                                                    Text(message.text)
                                                        .padding()
                                                        .foregroundColor(.white)
                                                        .background(Color.blue)
                                                        .cornerRadius(10)
                                                } else {
                                                    Image("profile_image")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 40, height: 40)
                                                        .clipShape(Circle())
                                                    
                                                    Text(message.text)
                                                        .padding()
                                                        .foregroundColor(.primary)
                                                        .background(Color(white: 0.95))
                                                        .cornerRadius(10)
                                                    
                                                    Spacer()
                                                }
                                            }
                                        }
                                        .navigationBarTitle("Chat", displayMode: .inline)
                                        .toolbar {
                                            ToolbarItem(placement: .navigationBarLeading) {
                                                Image(systemName: "person.crop.circle")
                                                    .font(.system(size: 24))
                                                    .foregroundColor(.blue)
                                                    .onTapGesture {
                                                        // Navigate to profile details view
                                                    }
                                            }
                                            
                                            ToolbarItem(placement: .navigationBarTrailing) {
                                                Image(systemName: "info.circle")
                                                    .font(.system(size: 24))
                                                    .foregroundColor(.blue)
                                                    .onTapGesture {
                                                        // Navigate to chat details view
                                                    }
                                            }
                                        }
                                        
                                        HStack {
                                            TextField("Type your message here", text: $messageText)
                                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                            Button(action: sendMessage) {
                                                Text("Send")
                                                    .fontWeight(.bold)
                                            }
                                        }
                                        .padding()
                                    }
                                }
                                
                                func sendMessage() {
                                    if messageText == "" { return }
                                    
                                    let message = Message(text: messageText, sender: "Me")
                                    messages.append(message)
                                    
                                    // Add message to Core Data or other storage mechanism
                                    
                                    messageText = ""
                                }
                            }

                            struct ChatView_Previews: PreviewProvider {
                                static var previews: some View {
                                    ChatView()
                                }
                            }
                            struct ChatView: View {
                                @State private var messageText = ""
                                @State private var messages: [Message] = []
                                
                                var body: some View {
                                    VStack {
                                        List(messages) { message in
                                            HStack {
                                                if message.sender == "Me" {
                                                    Spacer()
                                                    Text(message.text)
                                                        .padding()
                                                        .foregroundColor(.white)
                                                        .background(Color.blue)
                                                        .cornerRadius(10)
                                                } else {
                                                    Image("profile_image")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 40, height: 40)
                                                        .clipShape(Circle())
                                                    
                                                    Text(message.text)
                                                        .padding()
                                                        .foregroundColor(.primary)
                                                        .background(Color(white: 0.95))
                                                        .cornerRadius(10)
                                                    
                                                    Spacer()
                                                }
                                            }
                                        }
                                        .navigationBarTitle("Chat", displayMode: .inline)
                                        .toolbar {
                                            ToolbarItem(placement: .navigationBarLeading) {
                                                Image(systemName: "person.crop.circle")
                                                    .font(.system(size: 24))
                                                    .foregroundColor(.blue)
                                                    .onTapGesture {
                                                        // Navigate to profile details view
                                                    }
                                            }
                                            
                                            ToolbarItem(placement: .navigationBarTrailing) {
                                                Image(systemName: "info.circle")
                                                    .font(.system(size: 24))
                                                    .foregroundColor(.blue)
                                                    .onTapGesture {
                                                        // Navigate to chat details view
                                                    }
                                            }
                                        }
                                        
                                        HStack {
                                            TextField("Type your message here", text: $messageText)
                                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                            Button(action: sendMessage) {
                                                Text("Send")
                                                    .fontWeight(.bold)
                                            }
                                        }
                                        .padding()
                                    }
                                }
                                
                                func sendMessage() {
                                    if messageText == "" { return }
                                    
                                    let message = Message(text: messageText, sender: "Me")
                                    messages.append(message)
                                    
                                    // Add message to Core Data or other storage mechanism
                                    
                                    messageText = ""
                                }
                            }

                            struct ChatView_Previews: PreviewProvider {
                                static var previews: some View {
                                    ChatView()
                                }
                            }
                            struct ChatView: View {
                                @State private var messageText = ""
                                @State private var messages: [Message] = []
                                
                                var body: some View {
                                    VStack {
                                        List(messages) { message in
                                            HStack {
                                                if message.sender == "Me" {
                                                    Spacer()
                                                    Text(message.text)
                                                        .padding()
                                                        .foregroundColor(.white)
                                                        .background(Color.blue)
                                                        .cornerRadius(10)
                                                } else {
                                                    Image("profile_image")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 40, height: 40)
                                                        .clipShape(Circle())
                                                    
                                                    Text(message.text)
                                                        .padding()
                                                        .foregroundColor(.primary)
                                                        .background(Color(white: 0.95))
                                                        .cornerRadius(10)
                                                    
                                                    Spacer()
                                                }
                                            }
                                        }
                                        .navigationBarTitle("Chat", displayMode: .inline)
                                        .toolbar {
                                            ToolbarItem(placement: .navigationBarLeading) {
                                                Image(systemName: "person.crop.circle")
                                                    .font(.system(size: 24))
                                                    .foregroundColor(.blue)
                                                    .onTapGesture {
                                                        // Navigate to profile details view
                                                    }
                                            }
                                            
                                            ToolbarItem(placement: .navigationBarTrailing) {
                                                Image(systemName: "info.circle")
                                                    .font(.system(size: 24))
                                                    .foregroundColor(.blue)
                                                    .onTapGesture {
                                                        // Navigate to chat details view
                                                    }
                                            }
                                        }
                                        
                                        HStack {
                                            TextField("Type your message here", text: $messageText)
                                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                            Button(action: sendMessage) {
                                                Text("Send")
                                                    .fontWeight(.bold)
                                            }
                                        }
                                        .padding()
                                    }
                                }
                                
                                func sendMessage() {
                                    if messageText == "" { return }
                                    
                                    let message = Message(text: messageText, sender: "Me")
                                    messages.append(message)
                                    
                                    // Add message to Core Data or other storage mechanism
                                    
                                    messageText = ""
                                }
                            }

                            struct ChatView_Previews: PreviewProvider {
                                static var previews: some View {
                                    ChatView()
                                }
                            }
                            struct ChatView: View {
                                @State private var messageText = ""
                                @State private var messages: [Message] = []
                                
                                var body: some View {
                                    VStack {
                                        List(messages) { message in
                                            HStack {
                                                if message.sender == "Me" {
                                                    Spacer()
                                                    Text(message.text)
                                                        .padding()
                                                        .foregroundColor(.white)
                                                        .background(Color.blue)
                                                        .cornerRadius(10)
                                                } else {
                                                    Image("profile_image")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 40, height: 40)
                                                        .clipShape(Circle())
                                                    
                                                    Text(message.text)
                                                        .padding()
                                                        .foregroundColor(.primary)
                                                        .background(Color(white: 0.95))
                                                        .cornerRadius(10)
                                                    
                                                    Spacer()
                                                }
                                            }
                                        }
                                        .navigationBarTitle("Chat", displayMode: .inline)
                                        .toolbar {
                                            ToolbarItem(placement: .navigationBarLeading) {
                                                Image(systemName: "person.crop.circle")
                                                    .font(.system(size: 24))
                                                    .foregroundColor(.blue)
                                                    .onTapGesture {
                                                        // Navigate to profile details view
                                                    }
                                            }
                                            
                                            ToolbarItem(placement: .navigationBarTrailing) {
                                                Image(systemName: "info.circle")
                                                    .font(.system(size: 24))
                                                    .foregroundColor(.blue)
                                                    .onTapGesture {
                                                        // Navigate to chat details view
                                                    }
                                            }
                                        }
                                        
                                        HStack {
                                            TextField("Type your message here", text: $messageText)
                                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                            Button(action: sendMessage) {
                                                Text("Send")
                                                    .fontWeight(.bold)
                                            }
                                        }
                                        .padding()
                                    }
                                }
                                
                                func sendMessage() {
                                    if messageText == "" { return }
                                    
                                    let message = Message(text: messageText, sender: "Me")
                                    messages.append(message)
                                    
                                    // Add message to Core Data or other storage mechanism
                                    
                                    messageText = ""
                                }
                            }

                            struct ChatView_Previews: PreviewProvider {
                                static var previews: some View {
                                    ChatView()
                                }
                            }
round(Color.blue)
                                .cornerRadius(10)
                        } else {
                            Image("profile_image")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            Text(message.text)
                                .padding()
                                .foregroundColor(.primary)
                                .background(Color(white: 0.95))
                                .cornerRadius(10)
                            
                            Spacer()
                        }
                    }
                }
                .navigationBarTitle("Chat", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image(systemName: "person.crop.circle")
                            .font(.system(size: 24))
                            .foregroundColor(.blue)
                            .onTapGesture {
                                // Navigate to profile details view
                            }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Image(systemName: "info.circle")
                            .font(.system(size: 24))
                            .foregroundColor(.blue)
                            .onTapGesture {
                                // Navigate to chat details view
                            }
                    }
                }
                
                HStack {
                    TextField("Type your message here", text: $messageText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: sendMessage) {
                        Text("Send")
                            .fontWeight(.bold)
                    }
                }
                .padding()
            }
        }
        
        func sendMessage() {
            if messageText == "" { return }
            
            let message = Message(text: messageText, sender: "Me")
            messages.append(message)
            
            // Add message to Core Data or other storage mechanism
            
            messageText = ""
        }
    }

    struct ChatView_Previews: PreviewProvider {
        static var previews: some View {
            ChatView()
        }
    }
    struct ChatView: View {
        @State private var messageText = ""
        @State private var messages: [Message] = []
        
        var body: some View {
            VStack {
                List(messages) { message in
                    HStack {
                        if message.sender == "Me" {
                            Spacer()
                            Text(message.text)
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                        } else {
                            Image("profile_image")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            Text(message.text)
                                .padding()
                                .foregroundColor(.primary)
                                .background(Color(white: 0.95))
                                .cornerRadius(10)
                            
                            Spacer()
                        }
                    }
                }
                .navigationBarTitle("Chat", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image(systemName: "person.crop.circle")
                            .font(.system(size: 24))
                            .foregroundColor(.blue)
                            .onTapGesture {
                                // Navigate to profile details view
                            }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Image(systemName: "info.circle")
                            .font(.system(size: 24))
                            .foregroundColor(.blue)
                            .onTapGesture {
                                // Navigate to chat details view
                            }
                    }
                }
                
                HStack {
                    TextField("Type your message here", text: $messageText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: sendMessage) {
                        Text("Send")
                            .fontWeight(.bold)
                    }
                }
                .padding()
            }
        }
        
        func sendMessage() {
            if messageText == "" { return }
            
            let message = Message(text: messageText, sender: "Me")
            messages.append(message)
            
            // Add message to Core Data or other storage mechanism
            
            messageText = ""
        }
    }

    struct ChatView_Previews: PreviewProvider {
        static var previews: some View {
            ChatView()
        }
    }
    struct ChatView: View {
        @State private var messageText = ""
        @State private var messages: [Message] = []
        
        var body: some View {
            VStack {
                List(messages) { message in
                    HStack {
                        if message.sender == "Me" {
                            Spacer()
                            Text(message.text)
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                        } else {
                            Image("profile_image")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            Text(message.text)
                                .padding()
                                .foregroundColor(.primary)
                                .background(Color(white: 0.95))
                                .cornerRadius(10)
                            
                            Spacer()
                        }
                    }
                }
                .navigationBarTitle("Chat", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image(systemName: "person.crop.circle")
                            .font(.system(size: 24))
                            .foregroundColor(.blue)
                            .onTapGesture {
                                // Navigate to profile details view
                            }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Image(systemName: "info.circle")
                            .font(.system(size: 24))
                            .foregroundColor(.blue)
                            .onTapGesture {
                                // Navigate to chat details view
                            }
                    }
                }
                
                HStack {
                    TextField("Type your message here", text: $messageText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: sendMessage) {
                        Text("Send")
                            .fontWeight(.bold)
                    }
                }
                .padding()
            }
        }
        
        func sendMessage() {
            if messageText == "" { return }
            
            let message = Message(text: messageText, sender: "Me")
            messages.append(message)
            
            // Add message to Core Data or other storage mechanism
            
            messageText = ""
        }
    }

    struct ChatView_Previews: PreviewProvider {
        static var previews: some View {
            ChatView()
        }
    }
    struct ChatView: View {
        @State private var messageText = ""
        @State private var messages: [Message] = []
        
        var body: some View {
            VStack {
                List(messages) { message in
                    HStack {
                        if message.sender == "Me" {
                            Spacer()
                            Text(message.text)
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                        } else {
                            Image("profile_image")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            Text(message.text)
                                .padding()
                                .foregroundColor(.primary)
                                .background(Color(white: 0.95))
                                .cornerRadius(10)
                            
                            Spacer()
                        }
                    }
                }
                .navigationBarTitle("Chat", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image(systemName: "person.crop.circle")
                            .font(.system(size: 24))
                            .foregroundColor(.blue)
                            .onTapGesture {
                                // Navigate to profile details view
                            }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Image(systemName: "info.circle")
                            .font(.system(size: 24))
                            .foregroundColor(.blue)
                            .onTapGesture {
                                // Navigate to chat details view
                            }
                    }
                }
                
                HStack {
                    TextField("Type your message here", text: $messageText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: sendMessage) {
                        Text("Send")
                            .fontWeight(.bold)
                    }
                }
                .padding()
            }
        }
        
        func sendMessage() {
            if messageText == "" { return }
            
            let message = Message(text: messageText, sender: "Me")
            messages.append(message)
            
            // Add message to Core Data or other storage mechanism
            
            messageText = ""
        }
    }

    struct ChatView_Previews: PreviewProvider {
        static var previews: some View {
            ChatView()
        }
    }
    struct ChatView: View {
        @State private var messageText = ""
        @State private var messages: [Message] = []
        
        var body: some View {
            VStack {
                List(messages) { message in
                    HStack {
                        if message.sender == "Me" {
                            Spacer()
                            Text(message.text)
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                        } else {
                            Image("profile_image")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            Text(message.text)
                                .padding()
                                .foregroundColor(.primary)
                                .background(Color(white: 0.95))
                                .cornerRadius(10)
                            
                            Spacer()
                        }
                    }
                }
                .navigationBarTitle("Chat", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image(systemName: "person.crop.circle")
                            .font(.system(size: 24))
                            .foregroundColor(.blue)
                            .onTapGesture {
                                // Navigate to profile details view
                            }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Image(systemName: "info.circle")
                            .font(.system(size: 24))
                            .foregroundColor(.blue)
                            .onTapGesture {
                                // Navigate to chat details view
                            }
                    }
                }
                
                HStack {
                    TextField("Type your message here", text: $messageText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: sendMessage) {
                        Text("Send")
                            .fontWeight(.bold)
                    }
                }
                .padding()
            }
        }
        
        func sendMessage() {
            if messageText == "" { return }
            
            let message = Message(text: messageText, sender: "Me")
            messages.append(message)
            
            // Add message to Core Data or other storage mechanism
            
            messageText = ""
        }
    }

    struct ChatView_Previews: PreviewProvider {
        static var previews: some View {
            ChatView()
        }
    }
    struct ChatView: View {
        @State private var messageText = ""
        @State private var messages: [Message] = []
        
        var body: some View {
            VStack {
                List(messages) { message in
                    HStack {
                        if message.sender == "Me" {
                            Spacer()
                            Text(message.text)
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                        } else {
                            Image("profile_image")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            Text(message.text)
                                .padding()
                                .foregroundColor(.primary)
                                .background(Color(white: 0.95))
                                .cornerRadius(10)
                            
                            Spacer()
                        }
                    }
                }
                .navigationBarTitle("Chat", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image(systemName: "person.crop.circle")
                            .font(.system(size: 24))
                            .foregroundColor(.blue)
                            .onTapGesture {
                                // Navigate to profile details view
                            }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Image(systemName: "info.circle")
                            .font(.system(size: 24))
                            .foregroundColor(.blue)
                            .onTapGesture {
                                // Navigate to chat details view
                            }
                    }
                }
                
                HStack {
                    TextField("Type your message here", text: $messageText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: sendMessage) {
                        Text("Send")
                            .fontWeight(.bold)
                    }
                }
                .padding()
            }
        }
        
        func sendMessage() {
            if messageText == "" { return }
            
            let message = Message(text: messageText, sender: "Me")
            messages.append(message)
            
            // Add message to Core Data or other storage mechanism
            
            messageText = ""
        }
    }

    struct ChatView_Previews: PreviewProvider {
        static var previews: some View {
            ChatView()
        }
    }

    var body: some View {
        VStack {
            List(messages) { message in
                HStack {
                    if message.sender == "Me" {
                        Spacer()
                        Text(message.text)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                    } else {
                        Image("profile_image")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        
                        Text(message.text)
                            .padding()
                            .foregroundColor(.primary)
                            .background(Color(white: 0.95))
                            .cornerRadius(10)
                        
                        Spacer()
                    }
                }
            }
            .navigationBarTitle("Chat", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "person.crop.circle")
                        .font(.system(size: 24))
                        .foregroundColor(.blue)
                        .onTapGesture {
                            // Navigate to profile details view
                        }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "info.circle")
                        .font(.system(size: 24))
                        .foregroundColor(.blue)
                        .onTapGesture {
                            // Navigate to chat details view
                        }
                }
            }
            
            HStack {
                TextField("Type your message here", text: $messageText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: sendMessage) {
                    Text("Send")
                        .fontWeight(.bold)
                }
            }
            .padding()
        }
    }
    
    func sendMessage() {
        if messageText == "" { return }
        
        let message = Message(text: messageText, sender: "Me")
        messages.append(message)
        
        // Add message to Core Data or other storage mechanism
        
        messageText = ""
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}

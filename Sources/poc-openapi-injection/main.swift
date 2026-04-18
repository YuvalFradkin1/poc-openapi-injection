import Foundation

_ = try? Servers.Server1.url()

print("Build completed.")
if Foundation.FileManager.default.fileExists(atPath: "/tmp/openapi_injection_pwned") {
    print("STATE CHANGE PROVEN: /tmp/openapi_injection_pwned EXISTS")
} else {
    print("File not found")
}

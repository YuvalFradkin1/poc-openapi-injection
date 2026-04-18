import Foundation
print("Build completed.")
if FileManager.default.fileExists(atPath: "/tmp/openapi_injection_pwned") {
    print("STATE CHANGE PROVEN: /tmp/openapi_injection_pwned exists")
} else {
    print("Directory not found")
}

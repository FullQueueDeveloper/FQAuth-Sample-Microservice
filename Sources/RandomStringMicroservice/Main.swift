import Vapor

@main
struct Main {
  static func main() throws {
    var env = try Environment.detect()
    try LoggingSystem.bootstrap(from: &env)
    let app = Application(env)
    defer { app.shutdown() }
    try app.configure()
    try app.run()
  }
}

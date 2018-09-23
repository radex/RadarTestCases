class API {
    class func decodeTask(json: AnyObject) -> Task? {
        return (json as? [String: AnyObject]) |> { json in
            println("decoded task!")
            
            return Task(id: "abc")
        }
    }
}
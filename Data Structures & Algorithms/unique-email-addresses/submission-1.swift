class Solution {
    func numUniqueEmails(_ emails: [String]) -> Int {
        var uniqueEmails = Set<String>()

        for email in emails {
            //Memisahkan email menjadi local name dan domain name
            let parts = email.split(separator: "@")
            var local = String(parts[0])
            let domain = parts[1]

            if let plusIndex = local.firstIndex(of: "+") {
                local = String(local[..<plusIndex])
            }

            local = local.replacingOccurrences(of: ".", with: "")
            let cleanedEmail = "\(local)@\(domain)"

            uniqueEmails.insert(cleanedEmail)
        }

        return uniqueEmails.count
    }
}

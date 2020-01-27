import UIKit

var str = "Hello, playground"






class Permission {
    var role: String
    var name: String
    var active: Bool
    
    init(role: String, name: String, active: Bool) {
        self.role = role
        self.name = name
        self.active = active
    }
}

class User {
    var id: Int
    var name: String
    var roles: [String]
    
    init(id: Int, name: String, roles: [String]) {
        self.id = id
        self.name = name
        self.roles = roles
    }
}

class Authorization {
    var permissions: [Permission]
    var users: [User]
    
    init(permissions: [Permission], users: [User]) {
        self.permissions = permissions
        self.users = users
    }
    
    
    
    //Write a function that takes a user id and returns the list of strings matching the names of permissions that the user has. If the user or role cannot be found or the user has no permissions, then return an empty list.
    public func listPermissions(userId: Int) -> [String] {
        
        let user = users.filter({$0.id == userId})
        guard !user.isEmpty else {return [""]}
        
        let userPermissions =
                Array(Set(permissions
                .filter({user[0].roles
                .contains($0.role)})
                .compactMap({$0.role})))
        
        return userPermissions
    }
    
    
    //Write a function that takes a user id and a permission name and returns true if the user has that permission. Return false otherwise. The rules for whether a user has a permission are the same as the List Permissions function (including active/inactive handling). If the user or permission cannot be found, return false.
    public func checkPermitted(permissionName: String, userId: Int) -> Bool {

        let user = users.filter({$0.id == userId})
        let permission = permissions.filter({$0.name == permissionName})
        
        guard !user.isEmpty && !permission.isEmpty else { return false }
        
        return  user[0].roles.contains(permission[0].role)
      
    }
}


var authorization: Authorization!

func setUp() {
    var users = [User]()
    
    users.append(User(id: 1, name: "Anna Administrator", roles: ["superuser"]))
    users.append(User(id: 2, name: "Charles N. Charge", roles: ["charger", "rider"]))
    users.append(User(id: 7, name: "Ryder", roles: ["rider"]))
    users.append(User(id: 11, name: "Unregistered Ulysses", roles: []))
    users.append(User(id: 18, name: "Tessa Tester", roles: ["beta tester"]))
    
    var permissions = [Permission]()
    
    permissions.append(Permission(role: "superuser", name: "lock user account", active: true));
    permissions.append(Permission(role: "superuser", name: "unlock user account", active: true));
    permissions.append(Permission(role: "superuser", name: "purchase widgets", active: false));
    permissions.append(Permission(role: "charger", name: "view pick up locations", active: true));
    permissions.append(Permission(role: "rider", name: "view my profile", active: true));
    permissions.append(Permission(role: "rider", name: "scooters near me", active: true));
    
    authorization = Authorization(permissions: permissions, users: users)
}
setUp()
authorization.listPermissions(userId: 7)
//authorization.setUp()
//authorization.listPermissions(userId: 1)

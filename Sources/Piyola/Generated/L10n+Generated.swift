// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
public enum L10n {
  public enum Auth {
    /// Please contact the restaurant to activate your account
    public static var activationDescription: String { return L10n.tr("Auth", "activationDescription", fallback: "Please contact the restaurant to activate your account") }
    /// Account activation required
    public static var activationRequired: String { return L10n.tr("Auth", "activationRequired", fallback: "Account activation required") }
    /// Already have an account?
    public static var alreadyHaveAccount: String { return L10n.tr("Auth", "alreadyHaveAccount", fallback: "Already have an account?") }
    /// Don't have an account?
    public static var dontHaveAccount: String { return L10n.tr("Auth", "dontHaveAccount", fallback: "Don't have an account?") }
    /// Login
    public static var login: String { return L10n.tr("Auth", "login", fallback: "Login") }
    /// Phone number
    public static var number: String { return L10n.tr("Auth", "number", fallback: "Phone number") }
    /// Invalid verification code
    public static var otpInvalid: String { return L10n.tr("Auth", "otpInvalid", fallback: "Invalid verification code") }
    /// Enter the code we sent you to the number %@
    public static func otpSubtitle(_ p1: Any) -> String {
      return L10n.tr("Auth", "otpSubtitle", String(describing: p1), fallback: "Enter the code we sent you to the number %@")
    }
    /// Confirm your number
    public static var otpTitle: String { return L10n.tr("Auth", "otpTitle", fallback: "Confirm your number") }
    /// Password
    public static var password: String { return L10n.tr("Auth", "password", fallback: "Password") }
    /// Invalid phone number
    public static var phoneInvalid: String { return L10n.tr("Auth", "phoneInvalid", fallback: "Invalid phone number") }
    /// We will send an OTP verification to you
    public static var phoneSubtitle: String { return L10n.tr("Auth", "phoneSubtitle", fallback: "We will send an OTP verification to you") }
    /// Localizable.strings
    ///   
    /// 
    ///   Created by Asilbek Isakov on 13/01/24.
    public static var phoneTitle: String { return L10n.tr("Auth", "phoneTitle", fallback: "Enter your phone number") }
    /// Repeat password
    public static var repeatPassword: String { return L10n.tr("Auth", "repeatPassword", fallback: "Repeat password") }
    /// Send again
    public static var sendAgain: String { return L10n.tr("Auth", "sendAgain", fallback: "Send again") }
    /// Sign Up
    public static var signUp: String { return L10n.tr("Auth", "signUp", fallback: "Sign Up") }
  }
  public enum Cart {
    /// Accepted
    public static var accepted: String { return L10n.tr("Cart", "accepted", fallback: "Accepted") }
    /// Order Accept Time
    public static var acceptTime: String { return L10n.tr("Cart", "acceptTime", fallback: "Order Accept Time") }
    /// Active Orders
    public static var activeOrder: String { return L10n.tr("Cart", "activeOrder", fallback: "Active Orders") }
    /// Address
    public static var address: String { return L10n.tr("Cart", "address", fallback: "Address") }
    /// Amount exceeds the allowed limit.
    public static var amountExceedsLimit: String { return L10n.tr("Cart", "amountExceedsLimit", fallback: "Amount exceeds the allowed limit.") }
    /// As soon as possible
    public static var asap: String { return L10n.tr("Cart", "asap", fallback: "As soon as possible") }
    /// Bill
    public static var bill: String { return L10n.tr("Cart", "bill", fallback: "Bill") }
    /// Branch
    public static var branch: String { return L10n.tr("Cart", "branch", fallback: "Branch") }
    /// Call
    public static var call: String { return L10n.tr("Cart", "call", fallback: "Call") }
    /// Cancel
    public static var cancel: String { return L10n.tr("Cart", "cancel", fallback: "Cancel") }
    /// Canceled
    public static var canceled: String { return L10n.tr("Cart", "canceled", fallback: "Canceled") }
    /// Cash
    public static var cash: String { return L10n.tr("Cart", "cash", fallback: "Cash") }
    /// Cashback
    public static var cashback: String { return L10n.tr("Cart", "cashback", fallback: "Cashback") }
    /// Your Cashback balance: %@
    public static func cashbackBalance(_ p1: Any) -> String {
      return L10n.tr("Cart", "cashbackBalance", String(describing: p1), fallback: "Your Cashback balance: %@")
    }
    /// Enter the amount you'd like to pay from cashback balance
    public static var cashbackPay: String { return L10n.tr("Cart", "cashbackPay", fallback: "Enter the amount you'd like to pay from cashback balance") }
    /// Checkout
    public static var checkout: String { return L10n.tr("Cart", "checkout", fallback: "Checkout") }
    /// Choose Pickup Time
    public static var chooseTime: String { return L10n.tr("Cart", "chooseTime", fallback: "Choose Pickup Time") }
    /// Cart.strings
    ///   
    /// 
    ///   Created by Bilol Sanatillayev on 04/06/24.
    public static var clearCart: String { return L10n.tr("Cart", "clearCart", fallback: "Clear Basket") }
    /// Comment
    public static var comment: String { return L10n.tr("Cart", "comment", fallback: "Comment") }
    /// Leave a request for delivery
    public static var commentSubtitle: String { return L10n.tr("Cart", "commentSubtitle", fallback: "Leave a request for delivery") }
    /// Order Complete Time
    public static var completeTime: String { return L10n.tr("Cart", "completeTime", fallback: "Order Complete Time") }
    /// Confirm
    public static var confirm: String { return L10n.tr("Cart", "confirm", fallback: "Confirm") }
    /// Cooked
    public static var cooked: String { return L10n.tr("Cart", "cooked", fallback: "Cooked") }
    /// Cooking
    public static var cooking: String { return L10n.tr("Cart", "cooking", fallback: "Cooking") }
    /// Courier
    public static var courier: String { return L10n.tr("Cart", "courier", fallback: "Courier") }
    /// Created
    public static var created: String { return L10n.tr("Cart", "created", fallback: "Created") }
    /// Order is being created
    public static var creating: String { return L10n.tr("Cart", "creating", fallback: "Order is being created") }
    /// Delete
    public static var delete: String { return L10n.tr("Cart", "delete", fallback: "Delete") }
    /// Delivered
    public static var delivered: String { return L10n.tr("Cart", "delivered", fallback: "Delivered") }
    /// Delivery
    public static var delivery: String { return L10n.tr("Cart", "delivery", fallback: "Delivery") }
    /// Delivery address
    public static var deliveryAddress: String { return L10n.tr("Cart", "deliveryAddress", fallback: "Delivery address") }
    /// Delivery from %@ to %@ 
    public static func deliveryFromTo(_ p1: Any, _ p2: Any) -> String {
      return L10n.tr("Cart", "deliveryFromTo", String(describing: p1), String(describing: p2), fallback: "Delivery from %@ to %@ ")
    }
    /// Delivery Time
    public static var deliveryTime: String { return L10n.tr("Cart", "deliveryTime", fallback: "Delivery Time") }
    /// Discount
    public static var discount: String { return L10n.tr("Cart", "discount", fallback: "Discount") }
    /// Cart is empty
    public static var empty: String { return L10n.tr("Cart", "empty", fallback: "Cart is empty") }
    /// Menu is empty
    public static var emptyMenu: String { return L10n.tr("Cart", "emptyMenu", fallback: "Menu is empty") }
    /// This is necessary to start ordering products and tracking them.
    public static var emptySubtitle: String { return L10n.tr("Cart", "emptySubtitle", fallback: "This is necessary to start ordering products and tracking them.") }
    /// Enter the amount from your cashback balance
    public static var enterCashback: String { return L10n.tr("Cart", "enterCashback", fallback: "Enter the amount from your cashback balance") }
    /// Enter promo code
    public static var enterPromo: String { return L10n.tr("Cart", "enterPromo", fallback: "Enter promo code") }
    /// Feedback
    public static var feedback: String { return L10n.tr("Cart", "feedback", fallback: "Feedback") }
    /// Free
    public static var free: String { return L10n.tr("Cart", "free", fallback: "Free") }
    /// In progress
    public static var inProgress: String { return L10n.tr("Cart", "inProgress", fallback: "In progress") }
    /// Later
    public static var later: String { return L10n.tr("Cart", "later", fallback: "Later") }
    /// Learn more
    public static var learnMore: String { return L10n.tr("Cart", "learnMore", fallback: "Learn more") }
    /// My addresses
    public static var myAddress: String { return L10n.tr("Cart", "myAddress", fallback: "My addresses") }
    /// No selected branch
    public static var noBranch: String { return L10n.tr("Cart", "noBranch", fallback: "No selected branch") }
    /// Not Paid
    public static var notPaid: String { return L10n.tr("Cart", "notPaid", fallback: "Not Paid") }
    /// On the Way
    public static var onWay: String { return L10n.tr("Cart", "onWay", fallback: "On the Way") }
    /// Open
    public static var `open`: String { return L10n.tr("Cart", "open", fallback: "Open") }
    /// Open from %@ to %@ 
    public static func openFromTo(_ p1: Any, _ p2: Any) -> String {
      return L10n.tr("Cart", "openFromTo", String(describing: p1), String(describing: p2), fallback: "Open from %@ to %@ ")
    }
    /// Order
    public static var order: String { return L10n.tr("Cart", "order", fallback: "Order") }
    /// Order can't be created
    public static var orderCanNotBeCreated: String { return L10n.tr("Cart", "orderCanNotBeCreated", fallback: "Order can't be created") }
    /// Write about your order
    public static var orderComment: String { return L10n.tr("Cart", "orderComment", fallback: "Write about your order") }
    /// Order is scheduled
    public static var orderScheduled: String { return L10n.tr("Cart", "orderScheduled", fallback: "Order is scheduled") }
    /// Paid
    public static var paid: String { return L10n.tr("Cart", "paid", fallback: "Paid") }
    /// Pay
    public static var pay: String { return L10n.tr("Cart", "pay", fallback: "Pay") }
    /// Payment
    public static var payment: String { return L10n.tr("Cart", "payment", fallback: "Payment") }
    /// Payment amount
    public static var paymentAmount: String { return L10n.tr("Cart", "paymentAmount", fallback: "Payment amount") }
    /// Payment Methods
    public static var paymentMethod: String { return L10n.tr("Cart", "paymentMethod", fallback: "Payment Methods") }
    /// Payment Status
    public static var paymentStatus: String { return L10n.tr("Cart", "paymentStatus", fallback: "Payment Status") }
    /// Payment method
    public static var paymentType: String { return L10n.tr("Cart", "paymentType", fallback: "Payment method") }
    /// Picked Up
    public static var pickedUp: String { return L10n.tr("Cart", "pickedUp", fallback: "Picked Up") }
    /// Pick up
    public static var pickup: String { return L10n.tr("Cart", "pickup", fallback: "Pick up") }
    /// Pickup point phone
    public static var pickupPhoneSubtitle: String { return L10n.tr("Cart", "pickupPhoneSubtitle", fallback: "Pickup point phone") }
    /// Pickup point
    public static var pickupPoint: String { return L10n.tr("Cart", "pickupPoint", fallback: "Pickup point") }
    /// Pickup Time
    public static var pickupTime: String { return L10n.tr("Cart", "pickupTime", fallback: "Pickup Time") }
    /// Process
    public static var process: String { return L10n.tr("Cart", "process", fallback: "Process") }
    /// product
    public static var product: String { return L10n.tr("Cart", "product", fallback: "product") }
    /// Promo code
    public static var promo: String { return L10n.tr("Cart", "promo", fallback: "Promo code") }
    /// This promo code is applicable for orders with a minimum price of %@.
    public static func promoMinimumPrice(_ p1: Any) -> String {
      return L10n.tr("Cart", "promoMinimumPrice", String(describing: p1), fallback: "This promo code is applicable for orders with a minimum price of %@.")
    }
    /// Promo code does not exist, try entering a valid promo code
    public static var promoNotFound: String { return L10n.tr("Cart", "promoNotFound", fallback: "Promo code does not exist, try entering a valid promo code") }
    /// Rate
    public static var rate: String { return L10n.tr("Cart", "rate", fallback: "Rate") }
    /// Share your experience to make our service better.
    public static var rateSub: String { return L10n.tr("Cart", "rateSub", fallback: "Share your experience to make our service better.") }
    /// Rate the order
    public static var rateTitle: String { return L10n.tr("Cart", "rateTitle", fallback: "Rate the order") }
    /// Ready for Pickup
    public static var readyForPickup: String { return L10n.tr("Cart", "readyForPickup", fallback: "Ready for Pickup") }
    /// We recommend adding
    public static var recomendToAdd: String { return L10n.tr("Cart", "recomendToAdd", fallback: "We recommend adding") }
    /// Repeat
    public static var `repeat`: String { return L10n.tr("Cart", "repeat", fallback: "Repeat") }
    /// Please Select One of the Branches
    public static var selectBranch: String { return L10n.tr("Cart", "selectBranch", fallback: "Please Select One of the Branches") }
    /// Please select payment method
    public static var selectPayment: String { return L10n.tr("Cart", "selectPayment", fallback: "Please select payment method") }
    /// Order Start Time
    public static var startTime: String { return L10n.tr("Cart", "startTime", fallback: "Order Start Time") }
    /// Total
    public static var total: String { return L10n.tr("Cart", "total", fallback: "Total") }
    /// Waiting
    public static var waiting: String { return L10n.tr("Cart", "waiting", fallback: "Waiting") }
  }
  public enum Common {
    /// Confirm
    public static var confirm: String { return L10n.tr("Common", "confirm", fallback: "Confirm") }
    /// Continue
    public static var `continue`: String { return L10n.tr("Common", "continue", fallback: "Continue") }
    /// pcs
    public static var count: String { return L10n.tr("Common", "count", fallback: "pcs") }
    /// gr.
    public static var gramm: String { return L10n.tr("Common", "gramm", fallback: "gr.") }
    /// liter
    public static var liter: String { return L10n.tr("Common", "liter", fallback: "liter") }
    /// min
    public static var min: String { return L10n.tr("Common", "min", fallback: "min") }
    /// Common.strings
    /// 
    /// 
    ///   Created by Asilbek Isakov on 11/01/24.
    public static var no: String { return L10n.tr("Common", "no", fallback: "No") }
    /// Not connected to the internet
    public static var notConnected: String { return L10n.tr("Common", "notConnected", fallback: "Not connected to the internet") }
    /// Offline mode
    public static var offline: String { return L10n.tr("Common", "offline", fallback: "Offline mode") }
    /// Reload
    public static var reload: String { return L10n.tr("Common", "reload", fallback: "Reload") }
    /// Update
    public static var update: String { return L10n.tr("Common", "update", fallback: "Update") }
    /// Update the app
    public static var updateTitle: String { return L10n.tr("Common", "updateTitle", fallback: "Update the app") }
    /// uzs
    public static var uzs: String { return L10n.tr("Common", "uzs", fallback: "uzs") }
    /// Yes
    public static var yes: String { return L10n.tr("Common", "yes", fallback: "Yes") }
  }
  public enum Main {
    /// Accepted
    public static var accepted: String { return L10n.tr("Main", "accepted", fallback: "Accepted") }
    /// Active Orders
    public static var activeOrders: String { return L10n.tr("Main", "activeOrders", fallback: "Active Orders") }
    /// Add address
    public static var addAddress: String { return L10n.tr("Main", "addAddress", fallback: "Add address") }
    /// Addresses
    public static var addresses: String { return L10n.tr("Main", "addresses", fallback: "Addresses") }
    /// Add to cart
    public static var addToCart: String { return L10n.tr("Main", "addToCart", fallback: "Add to cart") }
    /// All
    public static var all: String { return L10n.tr("Main", "all", fallback: "All") }
    /// Archive Orders
    public static var archiveOrders: String { return L10n.tr("Main", "archiveOrders", fallback: "Archive Orders") }
    /// Calls
    public static var calls: String { return L10n.tr("Main", "calls", fallback: "Calls") }
    /// Cart
    public static var cart: String { return L10n.tr("Main", "cart", fallback: "Cart") }
    /// Cooking
    public static var cooking: String { return L10n.tr("Main", "cooking", fallback: "Cooking") }
    /// Delivered
    public static var delivered: String { return L10n.tr("Main", "delivered", fallback: "Delivered") }
    /// Delivery
    public static var delivery: String { return L10n.tr("Main", "delivery", fallback: "Delivery") }
    /// Devices
    public static var devices: String { return L10n.tr("Main", "devices", fallback: "Devices") }
    /// Search History
    public static var history: String { return L10n.tr("Main", "history", fallback: "Search History") }
    /// Home
    public static var home: String { return L10n.tr("Main", "home", fallback: "Home") }
    /// New Order
    public static var newOrder: String { return L10n.tr("Main", "newOrder", fallback: "New Order") }
    /// Notifications
    public static var notifications: String { return L10n.tr("Main", "notifications", fallback: "Notifications") }
    /// On the Way
    public static var onWay: String { return L10n.tr("Main", "onWay", fallback: "On the Way") }
    /// Open map
    public static var openMap: String { return L10n.tr("Main", "openMap", fallback: "Open map") }
    /// Orders
    public static var orders: String { return L10n.tr("Main", "orders", fallback: "Orders") }
    /// Pick up
    public static var pickUp: String { return L10n.tr("Main", "pickUp", fallback: "Pick up") }
    /// Profile
    public static var profile: String { return L10n.tr("Main", "profile", fallback: "Profile") }
    /// Promocodes
    public static var promocodes: String { return L10n.tr("Main", "promocodes", fallback: "Promocodes") }
    /// Ready
    public static var ready: String { return L10n.tr("Main", "ready", fallback: "Ready") }
    /// Result
    public static var result: String { return L10n.tr("Main", "result", fallback: "Result") }
    /// Select Address
    public static var selectAddress: String { return L10n.tr("Main", "selectAddress", fallback: "Select Address") }
    /// Select Branch
    public static var selectBranch: String { return L10n.tr("Main", "selectBranch", fallback: "Select Branch") }
    /// Localizable.strings
    ///   
    /// 
    ///   Created by Asilbek Isakov on 11/01/24.
    public static var settings: String { return L10n.tr("Main", "settings", fallback: "Settings") }
  }
  public enum Order {
    /// Accepted
    public static var accepted: String { return L10n.tr("Order", "accepted", fallback: "Accepted") }
    /// Add
    public static var add: String { return L10n.tr("Order", "add", fallback: "Add") }
    /// Address name
    public static var addressName: String { return L10n.tr("Order", "addressName", fallback: "Address name") }
    /// ASAP
    public static var asap: String { return L10n.tr("Order", "asap", fallback: "ASAP") }
    /// Cancelled
    public static var cancelled: String { return L10n.tr("Order", "cancelled", fallback: "Cancelled") }
    /// Car number
    public static var carNumber: String { return L10n.tr("Order", "carNumber", fallback: "Car number") }
    /// Change Status
    public static var changeStatus: String { return L10n.tr("Order", "changeStatus", fallback: "Change Status") }
    /// Client
    public static var client: String { return L10n.tr("Order", "client", fallback: "Client") }
    /// Delivery Type
    public static var deliveryType: String { return L10n.tr("Order", "deliveryType", fallback: "Delivery Type") }
    /// Distance
    public static var distance: String { return L10n.tr("Order", "distance", fallback: "Distance") }
    /// Call history is empty
    public static var emptyCallHistory: String { return L10n.tr("Order", "emptyCallHistory", fallback: "Call history is empty") }
    /// Orders list is empty
    public static var emptyOrdersList: String { return L10n.tr("Order", "emptyOrdersList", fallback: "Orders list is empty") }
    /// Payment history is empty
    public static var emptyPaymentHistory: String { return L10n.tr("Order", "emptyPaymentHistory", fallback: "Payment history is empty") }
    /// Estimation Failed
    public static var estimatingFailed: String { return L10n.tr("Order", "estimatingFailed", fallback: "Estimation Failed") }
    /// Failed
    public static var failed: String { return L10n.tr("Order", "failed", fallback: "Failed") }
    /// LOG
    public static var log: String { return L10n.tr("Order", "log", fallback: "LOG") }
    /// Localizable.strings
    ///   
    /// 
    ///   Created by Bilol Sanatillayev on 14/11/24.
    public static var main: String { return L10n.tr("Order", "main", fallback: "Main") }
    /// New Order
    public static var newOrder: String { return L10n.tr("Order", "newOrder", fallback: "New Order") }
    /// Not assigned yet
    public static var notAssignedYet: String { return L10n.tr("Order", "notAssignedYet", fallback: "Not assigned yet") }
    /// Operator
    public static var `operator`: String { return L10n.tr("Order", "operator", fallback: "Operator") }
    /// Arrived
    public static var performerArrived: String { return L10n.tr("Order", "performerArrived", fallback: "Arrived") }
    /// Delivered
    public static var performerDeliveredFinish: String { return L10n.tr("Order", "performerDeliveredFinish", fallback: "Delivered") }
    /// Performer Found
    public static var performerFound: String { return L10n.tr("Order", "performerFound", fallback: "Performer Found") }
    /// Looking for Performer
    public static var performerLookUp: String { return L10n.tr("Order", "performerLookUp", fallback: "Looking for Performer") }
    /// Performer Not Found
    public static var performerNotFound: String { return L10n.tr("Order", "performerNotFound", fallback: "Performer Not Found") }
    /// Picked Up
    public static var performerPickedUp: String { return L10n.tr("Order", "performerPickedUp", fallback: "Picked Up") }
    /// Pick-Up Arrived
    public static var performerPickUpArrived: String { return L10n.tr("Order", "performerPickUpArrived", fallback: "Pick-Up Arrived") }
    /// Return Arrived
    public static var performerReturnArrived: String { return L10n.tr("Order", "performerReturnArrived", fallback: "Return Arrived") }
    /// Returned
    public static var performerReturnedFinish: String { return L10n.tr("Order", "performerReturnedFinish", fallback: "Returned") }
    /// Returning
    public static var performerReturning: String { return L10n.tr("Order", "performerReturning", fallback: "Returning") }
    /// Photo
    public static var photo: String { return L10n.tr("Order", "photo", fallback: "Photo") }
    /// Press to Confirm
    public static var pressToConfirm: String { return L10n.tr("Order", "pressToConfirm", fallback: "Press to Confirm") }
    /// Ready for Approval
    public static var readyForApproval: String { return L10n.tr("Order", "readyForApproval", fallback: "Ready for Approval") }
    /// Receipt
    public static var receipt: String { return L10n.tr("Order", "receipt", fallback: "Receipt") }
    /// Show on Map
    public static var showOnMap: String { return L10n.tr("Order", "showOnMap", fallback: "Show on Map") }
    /// Delivery tariff
    public static var tariff: String { return L10n.tr("Order", "tariff", fallback: "Delivery tariff") }
  }
  public enum Product {
    /// Products
    public static var allProducts: String { return L10n.tr("Product", "allProducts", fallback: "Products") }
    /// Cooking time:
    public static var cooking: String { return L10n.tr("Product", "cooking", fallback: "Cooking time:") }
    /// Copied
    public static var copied: String { return L10n.tr("Product", "copied", fallback: "Copied") }
    /// Product.strings
    ///   
    /// 
    ///   Created by Asilbek Isakov on 22/7/24.
    public static var selectOne: String { return L10n.tr("Product", "selectOne", fallback: "Select one") }
    /// Select several
    public static var selectSeveral: String { return L10n.tr("Product", "selectSeveral", fallback: "Select several") }
    /// %@ - %@ min
    public static func time(_ p1: Any, _ p2: Any) -> String {
      return L10n.tr("Product", "time", String(describing: p1), String(describing: p2), fallback: "%@ - %@ min")
    }
  }
  public enum Profile {
    /// About Company
    public static var about: String { return L10n.tr("Profile", "about", fallback: "About Company") }
    /// My Address
    public static var address: String { return L10n.tr("Profile", "address", fallback: "My Address") }
    /// Your address list is empty. Please add an address.
    public static var addressEmpty: String { return L10n.tr("Profile", "addressEmpty", fallback: "Your address list is empty. Please add an address.") }
    /// Appearance
    public static var appearance: String { return L10n.tr("Profile", "appearance", fallback: "Appearance") }
    /// Beware!
    public static var beware: String { return L10n.tr("Profile", "beware", fallback: "Beware!") }
    /// Birthday
    public static var birthday: String { return L10n.tr("Profile", "birthday", fallback: "Birthday") }
    /// Camera
    public static var camera: String { return L10n.tr("Profile", "camera", fallback: "Camera") }
    /// Change name
    public static var changeName: String { return L10n.tr("Profile", "changeName", fallback: "Change name") }
    /// Change profile photo
    public static var changePhoto: String { return L10n.tr("Profile", "changePhoto", fallback: "Change profile photo") }
    /// Clients
    public static var clients: String { return L10n.tr("Profile", "clients", fallback: "Clients") }
    /// Contact us
    public static var contactUs: String { return L10n.tr("Profile", "contactUs", fallback: "Contact us") }
    /// Copy
    public static var copy: String { return L10n.tr("Profile", "copy", fallback: "Copy") }
    /// Dark
    public static var dark: String { return L10n.tr("Profile", "dark", fallback: "Dark") }
    /// Delete Account
    public static var deleteAccount: String { return L10n.tr("Profile", "deleteAccount", fallback: "Delete Account") }
    /// You’re trying to delete your address, are you really sure?
    public static var deleteAddress: String { return L10n.tr("Profile", "deleteAddress", fallback: "You’re trying to delete your address, are you really sure?") }
    /// You’re trying to delete your account, are you really sure?
    public static var deleteText: String { return L10n.tr("Profile", "deleteText", fallback: "You’re trying to delete your account, are you really sure?") }
    /// Edit
    public static var edit: String { return L10n.tr("Profile", "edit", fallback: "Edit") }
    /// Clients list is empty
    public static var emptyClients: String { return L10n.tr("Profile", "emptyClients", fallback: "Clients list is empty") }
    /// Couriers list is empty
    public static var emptyCouriers: String { return L10n.tr("Profile", "emptyCouriers", fallback: "Couriers list is empty") }
    /// Stoplist is empty
    public static var emptyStoplist: String { return L10n.tr("Profile", "emptyStoplist", fallback: "Stoplist is empty") }
    /// Users list is empty
    public static var emptyUsers: String { return L10n.tr("Profile", "emptyUsers", fallback: "Users list is empty") }
    /// Follow us on social media
    public static var followUs: String { return L10n.tr("Profile", "followUs", fallback: "Follow us on social media") }
    /// Gallery
    public static var gallery: String { return L10n.tr("Profile", "gallery", fallback: "Gallery") }
    /// Help
    public static var help: String { return L10n.tr("Profile", "help", fallback: "Help") }
    /// Language
    public static var language: String { return L10n.tr("Profile", "language", fallback: "Language") }
    /// Light
    public static var light: String { return L10n.tr("Profile", "light", fallback: "Light") }
    /// Create an account so you can manage your orders
    public static var loginSubtitle: String { return L10n.tr("Profile", "loginSubtitle", fallback: "Create an account so you can manage your orders") }
    /// Localizable.strings
    ///   
    /// 
    ///   Created by Asilbek Isakov on 11/01/24.
    public static var loginTitle: String { return L10n.tr("Profile", "loginTitle", fallback: "Sign In or Sign Up") }
    /// Log out
    public static var logout: String { return L10n.tr("Profile", "logout", fallback: "Log out") }
    /// Do you want to logout from profile?
    public static var logoutTitle: String { return L10n.tr("Profile", "logoutTitle", fallback: "Do you want to logout from profile?") }
    /// Menu
    public static var menu: String { return L10n.tr("Profile", "menu", fallback: "Menu") }
    /// Name
    public static var name: String { return L10n.tr("Profile", "name", fallback: "Name") }
    /// Number
    public static var number: String { return L10n.tr("Profile", "number", fallback: "Number") }
    /// Order History
    public static var orderHistory: String { return L10n.tr("Profile", "orderHistory", fallback: "Order History") }
    /// Order History is Empty
    public static var orderHistoryEmpty: String { return L10n.tr("Profile", "orderHistoryEmpty", fallback: "Order History is Empty") }
    /// Orders
    public static var orders: String { return L10n.tr("Profile", "orders", fallback: "Orders") }
    /// Our Branches
    public static var ourBranches: String { return L10n.tr("Profile", "ourBranches", fallback: "Our Branches") }
    /// Privacy Policy
    public static var privacy: String { return L10n.tr("Profile", "privacy", fallback: "Privacy Policy") }
    /// Promo code
    public static var promocode: String { return L10n.tr("Profile", "promocode", fallback: "Promo code") }
    /// Promo codes are empty
    public static var promoEmpty: String { return L10n.tr("Profile", "promoEmpty", fallback: "Promo codes are empty") }
    /// Save
    public static var save: String { return L10n.tr("Profile", "save", fallback: "Save") }
    /// Set your birthday
    public static var setBirthday: String { return L10n.tr("Profile", "setBirthday", fallback: "Set your birthday") }
    /// Stoplist
    public static var stoplist: String { return L10n.tr("Profile", "stoplist", fallback: "Stoplist") }
    /// Terms of Use
    public static var terms: String { return L10n.tr("Profile", "terms", fallback: "Terms of Use") }
    /// Vacancies
    public static var vacancies: String { return L10n.tr("Profile", "vacancies", fallback: "Vacancies") }
    /// Vacancies are empty
    public static var vacancyEmpty: String { return L10n.tr("Profile", "vacancyEmpty", fallback: "Vacancies are empty") }
    /// Your Branch
    public static var yourBranch: String { return L10n.tr("Profile", "yourBranch", fallback: "Your Branch") }
  }
  public enum Reason {
    /// Add promo to user
    public static var addPromoToUser: String { return L10n.tr("Reason", "addPromoToUser", fallback: "Add promo to user") }
    /// Create target address
    public static var addressTargetCreate: String { return L10n.tr("Reason", "addressTargetCreate", fallback: "Create target address") }
    /// Delete target address
    public static var addressTargetDelete: String { return L10n.tr("Reason", "addressTargetDelete", fallback: "Delete target address") }
    /// Update target address
    public static var addressTargetUpdate: String { return L10n.tr("Reason", "addressTargetUpdate", fallback: "Update target address") }
    /// Add staff
    public static var addStaff: String { return L10n.tr("Reason", "addStaff", fallback: "Add staff") }
    /// Change status of all orders
    public static var allOrdersStatusChange: String { return L10n.tr("Reason", "allOrdersStatusChange", fallback: "Change status of all orders") }
    /// Create analytic
    public static var analyticCreate: String { return L10n.tr("Reason", "analyticCreate", fallback: "Create analytic") }
    /// Delete area
    public static var areaDelete: String { return L10n.tr("Reason", "areaDelete", fallback: "Delete area") }
    /// Update area
    public static var areaUpdate: String { return L10n.tr("Reason", "areaUpdate", fallback: "Update area") }
    /// Create availability
    public static var availabilityCreate: String { return L10n.tr("Reason", "availabilityCreate", fallback: "Create availability") }
    /// Delete availability
    public static var availabilityDelete: String { return L10n.tr("Reason", "availabilityDelete", fallback: "Delete availability") }
    /// Create banner
    public static var bannerCreate: String { return L10n.tr("Reason", "bannerCreate", fallback: "Create banner") }
    /// Delete banner
    public static var bannerDelete: String { return L10n.tr("Reason", "bannerDelete", fallback: "Delete banner") }
    /// Update banner
    public static var bannerUpdate: String { return L10n.tr("Reason", "bannerUpdate", fallback: "Update banner") }
    /// Create Bito payment
    public static var bitoPaymentCreate: String { return L10n.tr("Reason", "bitoPaymentCreate", fallback: "Create Bito payment") }
    /// Delete Bito payment
    public static var bitoPaymentDelete: String { return L10n.tr("Reason", "bitoPaymentDelete", fallback: "Delete Bito payment") }
    /// Create Bito state
    public static var bitoStateCreate: String { return L10n.tr("Reason", "bitoStateCreate", fallback: "Create Bito state") }
    /// Delete Bito state
    public static var bitoStateDelete: String { return L10n.tr("Reason", "bitoStateDelete", fallback: "Delete Bito state") }
    /// Create booking
    public static var bookingCreate: String { return L10n.tr("Reason", "bookingCreate", fallback: "Create booking") }
    /// Update booking
    public static var bookingUpdate: String { return L10n.tr("Reason", "bookingUpdate", fallback: "Update booking") }
    /// Update booking status
    public static var bookingUpdateStatus: String { return L10n.tr("Reason", "bookingUpdateStatus", fallback: "Update booking status") }
    /// Create bot credentials
    public static var botCredentialsCreate: String { return L10n.tr("Reason", "botCredentialsCreate", fallback: "Create bot credentials") }
    /// Update bot credentials
    public static var botCredentialsUpdate: String { return L10n.tr("Reason", "botCredentialsUpdate", fallback: "Update bot credentials") }
    /// Update bot settings
    public static var botSettingsUpdate: String { return L10n.tr("Reason", "botSettingsUpdate", fallback: "Update bot settings") }
    /// Update branch app settings
    public static var branchAppSettingsUpdate: String { return L10n.tr("Reason", "branchAppSettingsUpdate", fallback: "Update branch app settings") }
    /// Assign branch to city
    public static var branchAssignCity: String { return L10n.tr("Reason", "branchAssignCity", fallback: "Assign branch to city") }
    /// Assign branch to company
    public static var branchAssignCompany: String { return L10n.tr("Reason", "branchAssignCompany", fallback: "Assign branch to company") }
    /// Create branch transaction
    public static var branchTransactionCreate: String { return L10n.tr("Reason", "branchTransactionCreate", fallback: "Create branch transaction") }
    /// Delete branch transaction
    public static var branchTransactionDelete: String { return L10n.tr("Reason", "branchTransactionDelete", fallback: "Delete branch transaction") }
    /// Update branch transaction
    public static var branchTransactionUpdate: String { return L10n.tr("Reason", "branchTransactionUpdate", fallback: "Update branch transaction") }
    /// Calculate delivery price by operator
    public static var calculateDeliveryPriceByOperator: String { return L10n.tr("Reason", "calculateDeliveryPriceByOperator", fallback: "Calculate delivery price by operator") }
    /// Create call
    public static var callCreate: String { return L10n.tr("Reason", "callCreate", fallback: "Create call") }
    /// Update call
    public static var callUpdate: String { return L10n.tr("Reason", "callUpdate", fallback: "Update call") }
    /// Update call type
    public static var callUpdateType: String { return L10n.tr("Reason", "callUpdateType", fallback: "Update call type") }
    /// Create candidate
    public static var candidateCreate: String { return L10n.tr("Reason", "candidateCreate", fallback: "Create candidate") }
    /// Delete candidate
    public static var candidateDelete: String { return L10n.tr("Reason", "candidateDelete", fallback: "Delete candidate") }
    /// Update candidate
    public static var candidateUpdate: String { return L10n.tr("Reason", "candidateUpdate", fallback: "Update candidate") }
    /// Create category
    public static var categoryCreate: String { return L10n.tr("Reason", "categoryCreate", fallback: "Create category") }
    /// Delete category
    public static var categoryDelete: String { return L10n.tr("Reason", "categoryDelete", fallback: "Delete category") }
    /// Update category
    public static var categoryUpdate: String { return L10n.tr("Reason", "categoryUpdate", fallback: "Update category") }
    /// Change aggregator order
    public static var changeAggregatorOrder: String { return L10n.tr("Reason", "changeAggregatorOrder", fallback: "Change aggregator order") }
    /// Create city
    public static var cityCreate: String { return L10n.tr("Reason", "cityCreate", fallback: "Create city") }
    /// Delete city
    public static var cityDelete: String { return L10n.tr("Reason", "cityDelete", fallback: "Delete city") }
    /// Create merchant in city
    public static var cityMerchantCreate: String { return L10n.tr("Reason", "cityMerchantCreate", fallback: "Create merchant in city") }
    /// Delete merchant from city
    public static var cityMerchantDelete: String { return L10n.tr("Reason", "cityMerchantDelete", fallback: "Delete merchant from city") }
    /// Update city
    public static var cityUpdate: String { return L10n.tr("Reason", "cityUpdate", fallback: "Update city") }
    /// Update client feedback settings
    public static var clientFeedbackSettingsUpdate: String { return L10n.tr("Reason", "clientFeedbackSettingsUpdate", fallback: "Update client feedback settings") }
    /// Update collector settings
    public static var collectorSettingsUpdate: String { return L10n.tr("Reason", "collectorSettingsUpdate", fallback: "Update collector settings") }
    /// Update company policies
    public static var companyPoliciesUpdate: String { return L10n.tr("Reason", "companyPoliciesUpdate", fallback: "Update company policies") }
    /// Update company
    public static var companyUpdate: String { return L10n.tr("Reason", "companyUpdate", fallback: "Update company") }
    /// Create contract
    public static var contractCreate: String { return L10n.tr("Reason", "contractCreate", fallback: "Create contract") }
    /// Delete contract
    public static var contractDelete: String { return L10n.tr("Reason", "contractDelete", fallback: "Delete contract") }
    /// Update contract
    public static var contractUpdate: String { return L10n.tr("Reason", "contractUpdate", fallback: "Update contract") }
    /// Update courier bot credentials
    public static var courierBotCredentialsUpdate: String { return L10n.tr("Reason", "courierBotCredentialsUpdate", fallback: "Update courier bot credentials") }
    /// Update courier order comment
    public static var courierOrderCommentUpdate: String { return L10n.tr("Reason", "courierOrderCommentUpdate", fallback: "Update courier order comment") }
    /// Create courier tariff
    public static var courierTariffCreate: String { return L10n.tr("Reason", "courierTariffCreate", fallback: "Create courier tariff") }
    /// Update courier tariff
    public static var courierTariffUpdate: String { return L10n.tr("Reason", "courierTariffUpdate", fallback: "Update courier tariff") }
    /// Create address
    public static var createAddress: String { return L10n.tr("Reason", "createAddress", fallback: "Create address") }
    /// Create admin
    public static var createAdmin: String { return L10n.tr("Reason", "createAdmin", fallback: "Create admin") }
    /// Create badge
    public static var createBadge: String { return L10n.tr("Reason", "createBadge", fallback: "Create badge") }
    /// Create branch
    public static var createBranch: String { return L10n.tr("Reason", "createBranch", fallback: "Create branch") }
    /// Create branch settings
    public static var createBranchSettings: String { return L10n.tr("Reason", "createBranchSettings", fallback: "Create branch settings") }
    /// Create branch work hours
    public static var createBranchWorkHours: String { return L10n.tr("Reason", "createBranchWorkHours", fallback: "Create branch work hours") }
    /// Create merchant
    public static var createMerchant: String { return L10n.tr("Reason", "createMerchant", fallback: "Create merchant") }
    /// Create merchant contact
    public static var createMerchantContact: String { return L10n.tr("Reason", "createMerchantContact", fallback: "Create merchant contact") }
    /// Create product from poster
    public static var createProductFromPoster: String { return L10n.tr("Reason", "createProductFromPoster", fallback: "Create product from poster") }
    /// Create review
    public static var createReview: String { return L10n.tr("Reason", "createReview", fallback: "Create review") }
    /// Create transaction by operator
    public static var createTransactionByOperator: String { return L10n.tr("Reason", "createTransactionByOperator", fallback: "Create transaction by operator") }
    /// Delete address
    public static var deleteAddress: String { return L10n.tr("Reason", "deleteAddress", fallback: "Delete address") }
    /// Delete badge
    public static var deleteBadge: String { return L10n.tr("Reason", "deleteBadge", fallback: "Delete badge") }
    /// Delete branch
    public static var deleteBranch: String { return L10n.tr("Reason", "deleteBranch", fallback: "Delete branch") }
    /// Delete merchant
    public static var deleteMerchant: String { return L10n.tr("Reason", "deleteMerchant", fallback: "Delete merchant") }
    /// Delete merchant contact
    public static var deleteMerchantContact: String { return L10n.tr("Reason", "deleteMerchantContact", fallback: "Delete merchant contact") }
    /// Delete poster ID
    public static var deletePosterId: String { return L10n.tr("Reason", "deletePosterId", fallback: "Delete poster ID") }
    /// Delete staff
    public static var deleteStaff: String { return L10n.tr("Reason", "deleteStaff", fallback: "Delete staff") }
    /// Update delivery map settings
    public static var deliveryMapSettingsUpdate: String { return L10n.tr("Reason", "deliveryMapSettingsUpdate", fallback: "Update delivery map settings") }
    /// Update delivery price calculation settings
    public static var deliveryPriceCalculateSettingUpdate: String { return L10n.tr("Reason", "deliveryPriceCalculateSettingUpdate", fallback: "Update delivery price calculation settings") }
    /// Update delivery settings
    public static var deliverySettingsUpdate: String { return L10n.tr("Reason", "deliverySettingsUpdate", fallback: "Update delivery settings") }
    /// Create delivery tariff
    public static var deliveryTariffCreate: String { return L10n.tr("Reason", "deliveryTariffCreate", fallback: "Create delivery tariff") }
    /// Delete delivery tariff
    public static var deliveryTariffDelete: String { return L10n.tr("Reason", "deliveryTariffDelete", fallback: "Delete delivery tariff") }
    /// Update delivery tariff
    public static var deliveryTariffUpdate: String { return L10n.tr("Reason", "deliveryTariffUpdate", fallback: "Update delivery tariff") }
    /// Create dine order
    public static var dineOrderCreate: String { return L10n.tr("Reason", "dineOrderCreate", fallback: "Create dine order") }
    /// Update dine order
    public static var dineOrderUpdate: String { return L10n.tr("Reason", "dineOrderUpdate", fallback: "Update dine order") }
    /// Update dine order status
    public static var dineOrderUpdateStatus: String { return L10n.tr("Reason", "dineOrderUpdateStatus", fallback: "Update dine order status") }
    /// Set branch and tariff for driver
    public static var driverSetBranchAndTariff: String { return L10n.tr("Reason", "driverSetBranchAndTariff", fallback: "Set branch and tariff for driver") }
    /// Update driver settings
    public static var driverSettingsUpdate: String { return L10n.tr("Reason", "driverSettingsUpdate", fallback: "Update driver settings") }
    /// Set vehicle for driver
    public static var driverSetVehicle: String { return L10n.tr("Reason", "driverSetVehicle", fallback: "Set vehicle for driver") }
    /// Update driver status
    public static var driverUpdateStatus: String { return L10n.tr("Reason", "driverUpdateStatus", fallback: "Update driver status") }
    /// Create eats order
    public static var eatsOrderCreate: String { return L10n.tr("Reason", "eatsOrderCreate", fallback: "Create eats order") }
    /// Delete eats order
    public static var eatsOrderDelete: String { return L10n.tr("Reason", "eatsOrderDelete", fallback: "Delete eats order") }
    /// Update eats order status
    public static var eatsOrderUpdateStatus: String { return L10n.tr("Reason", "eatsOrderUpdateStatus", fallback: "Update eats order status") }
    /// Update eats settings
    public static var eatsSettingsUpdate: String { return L10n.tr("Reason", "eatsSettingsUpdate", fallback: "Update eats settings") }
    /// Edit pick-up order status
    public static var editPickUpOrderStatus: String { return L10n.tr("Reason", "editPickUpOrderStatus", fallback: "Edit pick-up order status") }
    /// Create education
    public static var educationCreate: String { return L10n.tr("Reason", "educationCreate", fallback: "Create education") }
    /// Delete education
    public static var educationDelete: String { return L10n.tr("Reason", "educationDelete", fallback: "Delete education") }
    /// Update education
    public static var educationUpdate: String { return L10n.tr("Reason", "educationUpdate", fallback: "Update education") }
    /// Create EPOS
    public static var eposCreate: String { return L10n.tr("Reason", "eposCreate", fallback: "Create EPOS") }
    /// Create EPOS settings
    public static var eposSettingsCreate: String { return L10n.tr("Reason", "eposSettingsCreate", fallback: "Create EPOS settings") }
    /// Delete EPOS settings
    public static var eposSettingsDelete: String { return L10n.tr("Reason", "eposSettingsDelete", fallback: "Delete EPOS settings") }
    /// Update EPOS settings
    public static var eposSettingsUpdate: String { return L10n.tr("Reason", "eposSettingsUpdate", fallback: "Update EPOS settings") }
    /// Create expense type
    public static var expenseTypeCreate: String { return L10n.tr("Reason", "expenseTypeCreate", fallback: "Create expense type") }
    /// Delete expense type
    public static var expenseTypeDelete: String { return L10n.tr("Reason", "expenseTypeDelete", fallback: "Delete expense type") }
    /// Update expense type
    public static var expenseTypeUpdate: String { return L10n.tr("Reason", "expenseTypeUpdate", fallback: "Update expense type") }
    /// Update express branch
    public static var expressBranchUpdate: String { return L10n.tr("Reason", "expressBranchUpdate", fallback: "Update express branch") }
    /// Refresh express products
    public static var expressProductRefresh: String { return L10n.tr("Reason", "expressProductRefresh", fallback: "Refresh express products") }
    /// Create extra
    public static var extraCreate: String { return L10n.tr("Reason", "extraCreate", fallback: "Create extra") }
    /// Delete extra
    public static var extraDelete: String { return L10n.tr("Reason", "extraDelete", fallback: "Delete extra") }
    /// Update extra
    public static var extraUpdate: String { return L10n.tr("Reason", "extraUpdate", fallback: "Update extra") }
    /// Create factory
    public static var factoryCreate: String { return L10n.tr("Reason", "factoryCreate", fallback: "Create factory") }
    /// Delete factory
    public static var factoryDelete: String { return L10n.tr("Reason", "factoryDelete", fallback: "Delete factory") }
    /// Update factory
    public static var factoryUpdate: String { return L10n.tr("Reason", "factoryUpdate", fallback: "Update factory") }
    /// Send feedback to courier
    public static var feedbackToCourier: String { return L10n.tr("Reason", "feedbackToCourier", fallback: "Send feedback to courier") }
    /// Update courier settings
    public static var findCourierSettingsUpdate: String { return L10n.tr("Reason", "findCourierSettingsUpdate", fallback: "Update courier settings") }
    /// Create free delivery
    public static var freeDeliveryCreate: String { return L10n.tr("Reason", "freeDeliveryCreate", fallback: "Create free delivery") }
    /// Update free delivery
    public static var freeDeliveryUpdate: String { return L10n.tr("Reason", "freeDeliveryUpdate", fallback: "Update free delivery") }
    /// Generate new promo
    public static var generateNewPromo: String { return L10n.tr("Reason", "generateNewPromo", fallback: "Generate new promo") }
    /// Create group
    public static var groupCreate: String { return L10n.tr("Reason", "groupCreate", fallback: "Create group") }
    /// Delete group
    public static var groupDelete: String { return L10n.tr("Reason", "groupDelete", fallback: "Delete group") }
    /// Update group
    public static var groupUpdate: String { return L10n.tr("Reason", "groupUpdate", fallback: "Update group") }
    /// Create hall
    public static var hallCreate: String { return L10n.tr("Reason", "hallCreate", fallback: "Create hall") }
    /// Delete hall
    public static var hallDelete: String { return L10n.tr("Reason", "hallDelete", fallback: "Delete hall") }
    /// Update hall
    public static var hallUpdate: String { return L10n.tr("Reason", "hallUpdate", fallback: "Update hall") }
    /// Create history
    public static var historyCreate: String { return L10n.tr("Reason", "historyCreate", fallback: "Create history") }
    /// Delete history
    public static var historyDelete: String { return L10n.tr("Reason", "historyDelete", fallback: "Delete history") }
    /// Create IIKO payment
    public static var iikoPaymentCreate: String { return L10n.tr("Reason", "iikoPaymentCreate", fallback: "Create IIKO payment") }
    /// Delete IIKO payment
    public static var iikoPaymentDelete: String { return L10n.tr("Reason", "iikoPaymentDelete", fallback: "Delete IIKO payment") }
    /// Import product from poster
    public static var importProductFromPoster: String { return L10n.tr("Reason", "importProductFromPoster", fallback: "Import product from poster") }
    /// Import product with category from poster
    public static var importProductFromPosterWithCategory: String { return L10n.tr("Reason", "importProductFromPosterWithCategory", fallback: "Import product with category from poster") }
    /// Create income
    public static var incomeCreate: String { return L10n.tr("Reason", "incomeCreate", fallback: "Create income") }
    /// Update income
    public static var incomeUpdate: String { return L10n.tr("Reason", "incomeUpdate", fallback: "Update income") }
    /// Kell device sessions
    public static var kellDeviceSessions: String { return L10n.tr("Reason", "kellDeviceSessions", fallback: "Kell device sessions") }
    /// Create knowledge
    public static var knowledgeCreate: String { return L10n.tr("Reason", "knowledgeCreate", fallback: "Create knowledge") }
    /// Delete knowledge
    public static var knowledgeDelete: String { return L10n.tr("Reason", "knowledgeDelete", fallback: "Delete knowledge") }
    /// Update knowledge
    public static var knowledgeUpdate: String { return L10n.tr("Reason", "knowledgeUpdate", fallback: "Update knowledge") }
    /// Create label
    public static var labelCreate: String { return L10n.tr("Reason", "labelCreate", fallback: "Create label") }
    /// Delete label
    public static var labelDelete: String { return L10n.tr("Reason", "labelDelete", fallback: "Delete label") }
    /// Update label
    public static var labelUpdate: String { return L10n.tr("Reason", "labelUpdate", fallback: "Update label") }
    /// Join logistics branch
    public static var logistJoinBranch: String { return L10n.tr("Reason", "logistJoinBranch", fallback: "Join logistics branch") }
    /// Logout
    public static var logout: String { return L10n.tr("Reason", "logout", fallback: "Logout") }
    /// Manually update order
    public static var manuallyOrderUpdate: String { return L10n.tr("Reason", "manuallyOrderUpdate", fallback: "Manually update order") }
    /// Create merchant delivery keys
    public static var merchantDeliveryKeysCreate: String { return L10n.tr("Reason", "merchantDeliveryKeysCreate", fallback: "Create merchant delivery keys") }
    /// Delete merchant delivery keys
    public static var merchantDeliveryKeysDelete: String { return L10n.tr("Reason", "merchantDeliveryKeysDelete", fallback: "Delete merchant delivery keys") }
    /// Update merchant delivery keys
    public static var merchantDeliveryKeysUpdate: String { return L10n.tr("Reason", "merchantDeliveryKeysUpdate", fallback: "Update merchant delivery keys") }
    /// Update active merchant delivery key types
    public static var merchantDeliveryKeysUpdateActiveTypes: String { return L10n.tr("Reason", "merchantDeliveryKeysUpdateActiveTypes", fallback: "Update active merchant delivery key types") }
    /// Update merchant Yandex delivery keys
    public static var merchantDeliveryKeysUpdateYandex: String { return L10n.tr("Reason", "merchantDeliveryKeysUpdateYandex", fallback: "Update merchant Yandex delivery keys") }
    /// Update merchant mobile settings
    public static var merchantMobileSettingsUpdate: String { return L10n.tr("Reason", "merchantMobileSettingsUpdate", fallback: "Update merchant mobile settings") }
    /// Delete merchant poster comment
    public static var merchantPosterCommentDelete: String { return L10n.tr("Reason", "merchantPosterCommentDelete", fallback: "Delete merchant poster comment") }
    /// Update merchant poster comment
    public static var merchantPosterCommentUpdate: String { return L10n.tr("Reason", "merchantPosterCommentUpdate", fallback: "Update merchant poster comment") }
    /// Update merchant poster
    public static var merchantPosterUpdate: String { return L10n.tr("Reason", "merchantPosterUpdate", fallback: "Update merchant poster") }
    /// Update merchant QR settings
    public static var merchantQrSettingsUpdate: String { return L10n.tr("Reason", "merchantQrSettingsUpdate", fallback: "Update merchant QR settings") }
    /// Update merchant web settings
    public static var merchantWebSettingsUpdate: String { return L10n.tr("Reason", "merchantWebSettingsUpdate", fallback: "Update merchant web settings") }
    /// Millennium pre-order price check
    public static var millenniumCheckPricePreOrder: String { return L10n.tr("Reason", "millenniumCheckPricePreOrder", fallback: "Millennium pre-order price check") }
    /// Millennium order canceled
    public static var millenniumOrderCanceled: String { return L10n.tr("Reason", "millenniumOrderCanceled", fallback: "Millennium order canceled") }
    /// Create millennium order
    public static var millenniumOrderCreate: String { return L10n.tr("Reason", "millenniumOrderCreate", fallback: "Create millennium order") }
    /// Update millennium settings
    public static var millenniumSettingsUpdate: String { return L10n.tr("Reason", "millenniumSettingsUpdate", fallback: "Update millennium settings") }
    /// Create branch modification
    public static var modificationBranchCreate: String { return L10n.tr("Reason", "modificationBranchCreate", fallback: "Create branch modification") }
    /// Delete branch modification
    public static var modificationBranchDelete: String { return L10n.tr("Reason", "modificationBranchDelete", fallback: "Delete branch modification") }
    /// Update branch modification
    public static var modificationBranchUpdate: String { return L10n.tr("Reason", "modificationBranchUpdate", fallback: "Update branch modification") }
    /// Create modification
    public static var modificationCreate: String { return L10n.tr("Reason", "modificationCreate", fallback: "Create modification") }
    /// Delete modification
    public static var modificationDelete: String { return L10n.tr("Reason", "modificationDelete", fallback: "Delete modification") }
    /// Create branch group modification
    public static var modificationGroupBranchCreate: String { return L10n.tr("Reason", "modificationGroupBranchCreate", fallback: "Create branch group modification") }
    /// Delete branch group modification
    public static var modificationGroupBranchDelete: String { return L10n.tr("Reason", "modificationGroupBranchDelete", fallback: "Delete branch group modification") }
    /// Update branch group modification
    public static var modificationGroupBranchUpdate: String { return L10n.tr("Reason", "modificationGroupBranchUpdate", fallback: "Update branch group modification") }
    /// Create modification group
    public static var modificationGroupCreate: String { return L10n.tr("Reason", "modificationGroupCreate", fallback: "Create modification group") }
    /// Delete modification group
    public static var modificationGroupDelete: String { return L10n.tr("Reason", "modificationGroupDelete", fallback: "Delete modification group") }
    /// Update modification group
    public static var modificationGroupUpdate: String { return L10n.tr("Reason", "modificationGroupUpdate", fallback: "Update modification group") }
    /// Update modification
    public static var modificationUpdate: String { return L10n.tr("Reason", "modificationUpdate", fallback: "Update modification") }
    /// Create news
    public static var newsCreate: String { return L10n.tr("Reason", "newsCreate", fallback: "Create news") }
    /// Delete news
    public static var newsDelete: String { return L10n.tr("Reason", "newsDelete", fallback: "Delete news") }
    /// Update news
    public static var newsUpdate: String { return L10n.tr("Reason", "newsUpdate", fallback: "Update news") }
    /// Delete notification
    public static var notificationDelete: String { return L10n.tr("Reason", "notificationDelete", fallback: "Delete notification") }
    /// Update notification
    public static var notificationUpdate: String { return L10n.tr("Reason", "notificationUpdate", fallback: "Update notification") }
    /// Create operator phone number
    public static var operatorPhoneCreate: String { return L10n.tr("Reason", "operatorPhoneCreate", fallback: "Create operator phone number") }
    /// Delete operator phone number
    public static var operatorPhoneDelete: String { return L10n.tr("Reason", "operatorPhoneDelete", fallback: "Delete operator phone number") }
    /// Create order at specified time
    public static var orderAtTimeCreate: String { return L10n.tr("Reason", "orderAtTimeCreate", fallback: "Create order at specified time") }
    /// Change order service type
    public static var orderChangeServiceType: String { return L10n.tr("Reason", "orderChangeServiceType", fallback: "Change order service type") }
    /// Order paid by collector courier
    public static var orderCollectorCourierPaid: String { return L10n.tr("Reason", "orderCollectorCourierPaid", fallback: "Order paid by collector courier") }
    /// Update order comment
    public static var orderCommentUpdate: String { return L10n.tr("Reason", "orderCommentUpdate", fallback: "Update order comment") }
    /// Create order
    public static var orderCreate: String { return L10n.tr("Reason", "orderCreate", fallback: "Create order") }
    /// Order delivered by courier
    public static var orderDeliveredByCourier: String { return L10n.tr("Reason", "orderDeliveredByCourier", fallback: "Order delivered by courier") }
    /// Order returned
    public static var orderDeliveryReturned: String { return L10n.tr("Reason", "orderDeliveryReturned", fallback: "Order returned") }
    /// Create order draft
    public static var orderDraftCreate: String { return L10n.tr("Reason", "orderDraftCreate", fallback: "Create order draft") }
    /// Delete order draft
    public static var orderDraftDelete: String { return L10n.tr("Reason", "orderDraftDelete", fallback: "Delete order draft") }
    /// Update order draft
    public static var orderDraftUpdate: String { return L10n.tr("Reason", "orderDraftUpdate", fallback: "Update order draft") }
    /// Edit order delivery type
    public static var orderEditDeliveryType: String { return L10n.tr("Reason", "orderEditDeliveryType", fallback: "Edit order delivery type") }
    /// Edit order status
    public static var orderEditStatus: String { return L10n.tr("Reason", "orderEditStatus", fallback: "Edit order status") }
    /// Create order feedback
    public static var orderFeedbackCreate: String { return L10n.tr("Reason", "orderFeedbackCreate", fallback: "Create order feedback") }
    /// Delete order feedback
    public static var orderFeedbackDelete: String { return L10n.tr("Reason", "orderFeedbackDelete", fallback: "Delete order feedback") }
    /// Update order feedback
    public static var orderFeedbackUpdate: String { return L10n.tr("Reason", "orderFeedbackUpdate", fallback: "Update order feedback") }
    /// Assign order to courier
    public static var orderJoinToCourier: String { return L10n.tr("Reason", "orderJoinToCourier", fallback: "Assign order to courier") }
    /// Assign order list to courier
    public static var orderListJoinToCourier: String { return L10n.tr("Reason", "orderListJoinToCourier", fallback: "Assign order list to courier") }
    /// Create order merchant settings
    public static var orderMerchantSettingsCreate: String { return L10n.tr("Reason", "orderMerchantSettingsCreate", fallback: "Create order merchant settings") }
    /// Update order merchant settings
    public static var orderMerchantSettingsUpdate: String { return L10n.tr("Reason", "orderMerchantSettingsUpdate", fallback: "Update order merchant settings") }
    /// Order paid by operator
    public static var orderPaidByOperator: String { return L10n.tr("Reason", "orderPaidByOperator", fallback: "Order paid by operator") }
    /// Refresh order products
    public static var orderProductsRefresh: String { return L10n.tr("Reason", "orderProductsRefresh", fallback: "Refresh order products") }
    /// Orders on the way for delivery
    public static var ordersDeliveryOnWay: String { return L10n.tr("Reason", "ordersDeliveryOnWay", fallback: "Orders on the way for delivery") }
    /// Send order message (Telegram)
    public static var orderSendMessageTelegram: String { return L10n.tr("Reason", "orderSendMessageTelegram", fallback: "Send order message (Telegram)") }
    /// Send order to poster
    public static var orderSendPoster: String { return L10n.tr("Reason", "orderSendPoster", fallback: "Send order to poster") }
    /// Add collector image to order
    public static var orderSetCollectorImage: String { return L10n.tr("Reason", "orderSetCollectorImage", fallback: "Add collector image to order") }
    /// Assign operator to order
    public static var orderSetOperator: String { return L10n.tr("Reason", "orderSetOperator", fallback: "Assign operator to order") }
    /// Update order address and payment type
    public static var orderUpdateAddressAndPaymentType: String { return L10n.tr("Reason", "orderUpdateAddressAndPaymentType", fallback: "Update order address and payment type") }
    /// Update order payment type
    public static var orderUpdatePaymentType: String { return L10n.tr("Reason", "orderUpdatePaymentType", fallback: "Update order payment type") }
    /// Create other payment type
    public static var otherPaymentTypeCreate: String { return L10n.tr("Reason", "otherPaymentTypeCreate", fallback: "Create other payment type") }
    /// Delete other payment type
    public static var otherPaymentTypeDelete: String { return L10n.tr("Reason", "otherPaymentTypeDelete", fallback: "Delete other payment type") }
    /// Update other payment type
    public static var otherPaymentTypeUpdate: String { return L10n.tr("Reason", "otherPaymentTypeUpdate", fallback: "Update other payment type") }
    /// Create outcome
    public static var outcomeCreate: String { return L10n.tr("Reason", "outcomeCreate", fallback: "Create outcome") }
    /// Update outcome
    public static var outcomeUpdate: String { return L10n.tr("Reason", "outcomeUpdate", fallback: "Update outcome") }
    /// Create payment account
    public static var paymentAccountCreate: String { return L10n.tr("Reason", "paymentAccountCreate", fallback: "Create payment account") }
    /// Delete payment account
    public static var paymentAccountDelete: String { return L10n.tr("Reason", "paymentAccountDelete", fallback: "Delete payment account") }
    /// Update payment account
    public static var paymentAccountUpdate: String { return L10n.tr("Reason", "paymentAccountUpdate", fallback: "Update payment account") }
    /// Assign payment to branch
    public static var paymentAssignBranch: String { return L10n.tr("Reason", "paymentAssignBranch", fallback: "Assign payment to branch") }
    /// Activate payment merchant
    public static var paymentMerchantActive: String { return L10n.tr("Reason", "paymentMerchantActive", fallback: "Activate payment merchant") }
    /// Create payment merchant
    public static var paymentMerchantCreate: String { return L10n.tr("Reason", "paymentMerchantCreate", fallback: "Create payment merchant") }
    /// Delete payment merchant
    public static var paymentMerchantDelete: String { return L10n.tr("Reason", "paymentMerchantDelete", fallback: "Delete payment merchant") }
    /// Update payment merchant
    public static var paymentMerchantUpdate: String { return L10n.tr("Reason", "paymentMerchantUpdate", fallback: "Update payment merchant") }
    /// Create payment outcome
    public static var paymentOutcomeCreate: String { return L10n.tr("Reason", "paymentOutcomeCreate", fallback: "Create payment outcome") }
    /// Create payment settings
    public static var paymentSettingsCreate: String { return L10n.tr("Reason", "paymentSettingsCreate", fallback: "Create payment settings") }
    /// Delete payment settings
    public static var paymentSettingsDelete: String { return L10n.tr("Reason", "paymentSettingsDelete", fallback: "Delete payment settings") }
    /// Create payment transaction
    public static var paymentTransactionCreate: String { return L10n.tr("Reason", "paymentTransactionCreate", fallback: "Create payment transaction") }
    /// Create driver payment transaction
    public static var paymentTransactionDriverCreate: String { return L10n.tr("Reason", "paymentTransactionDriverCreate", fallback: "Create driver payment transaction") }
    /// Create poster payment transaction
    public static var posterPaymentTransaction: String { return L10n.tr("Reason", "posterPaymentTransaction", fallback: "Create poster payment transaction") }
    /// Update poster stop list
    public static var posterStoplistUpdate: String { return L10n.tr("Reason", "posterStoplistUpdate", fallback: "Update poster stop list") }
    /// Create product branch
    public static var productBranchCreate: String { return L10n.tr("Reason", "productBranchCreate", fallback: "Create product branch") }
    /// Delete product branch
    public static var productBranchDelete: String { return L10n.tr("Reason", "productBranchDelete", fallback: "Delete product branch") }
    /// Create product comment
    public static var productCommentCreate: String { return L10n.tr("Reason", "productCommentCreate", fallback: "Create product comment") }
    /// Delete product comment
    public static var productCommentDelete: String { return L10n.tr("Reason", "productCommentDelete", fallback: "Delete product comment") }
    /// Update product comment
    public static var productCommentUpdate: String { return L10n.tr("Reason", "productCommentUpdate", fallback: "Update product comment") }
    /// Create product
    public static var productCreate: String { return L10n.tr("Reason", "productCreate", fallback: "Create product") }
    /// Delete product
    public static var productDelete: String { return L10n.tr("Reason", "productDelete", fallback: "Delete product") }
    /// Add product to favourites
    public static var productFavouriteCreate: String { return L10n.tr("Reason", "productFavouriteCreate", fallback: "Add product to favourites") }
    /// Remove product from favourites
    public static var productFavouriteDelete: String { return L10n.tr("Reason", "productFavouriteDelete", fallback: "Remove product from favourites") }
    /// Update product in favourites
    public static var productFavouriteUpdate: String { return L10n.tr("Reason", "productFavouriteUpdate", fallback: "Update product in favourites") }
    /// Create product label
    public static var productLabelCreate: String { return L10n.tr("Reason", "productLabelCreate", fallback: "Create product label") }
    /// Delete product label
    public static var productLabelDelete: String { return L10n.tr("Reason", "productLabelDelete", fallback: "Delete product label") }
    /// Create product unit
    public static var productUnitCreate: String { return L10n.tr("Reason", "productUnitCreate", fallback: "Create product unit") }
    /// Delete product unit
    public static var productUnitDelete: String { return L10n.tr("Reason", "productUnitDelete", fallback: "Delete product unit") }
    /// Update product
    public static var productUpdate: String { return L10n.tr("Reason", "productUpdate", fallback: "Update product") }
    /// Create promo
    public static var promoCreate: String { return L10n.tr("Reason", "promoCreate", fallback: "Create promo") }
    /// Delete promo
    public static var promoDelete: String { return L10n.tr("Reason", "promoDelete", fallback: "Delete promo") }
    /// Update promo
    public static var promoUpdate: String { return L10n.tr("Reason", "promoUpdate", fallback: "Update promo") }
    /// Create provider
    public static var providerCreate: String { return L10n.tr("Reason", "providerCreate", fallback: "Create provider") }
    /// Delete provider
    public static var providerDelete: String { return L10n.tr("Reason", "providerDelete", fallback: "Delete provider") }
    /// Create provider payment
    public static var providerPaymentCreate: String { return L10n.tr("Reason", "providerPaymentCreate", fallback: "Create provider payment") }
    /// Delete provider payment
    public static var providerPaymentDelete: String { return L10n.tr("Reason", "providerPaymentDelete", fallback: "Delete provider payment") }
    /// Update provider payment
    public static var providerPaymentUpdate: String { return L10n.tr("Reason", "providerPaymentUpdate", fallback: "Update provider payment") }
    /// Create provider tag
    public static var providerTagCreate: String { return L10n.tr("Reason", "providerTagCreate", fallback: "Create provider tag") }
    /// Delete provider tag
    public static var providerTagDelete: String { return L10n.tr("Reason", "providerTagDelete", fallback: "Delete provider tag") }
    /// Update provider
    public static var providerUpdate: String { return L10n.tr("Reason", "providerUpdate", fallback: "Update provider") }
    /// Send receipt to client
    public static var receiptSendClient: String { return L10n.tr("Reason", "receiptSendClient", fallback: "Send receipt to client") }
    /// Re-create product from poster
    public static var reCreateProductFromPoster: String { return L10n.tr("Reason", "reCreateProductFromPoster", fallback: "Re-create product from poster") }
    /// Resend order to poster
    public static var resendOrderToPoster: String { return L10n.tr("Reason", "resendOrderToPoster", fallback: "Resend order to poster") }
    /// Create restaurant
    public static var restaurantCreate: String { return L10n.tr("Reason", "restaurantCreate", fallback: "Create restaurant") }
    /// Delete restaurant
    public static var restaurantDelete: String { return L10n.tr("Reason", "restaurantDelete", fallback: "Delete restaurant") }
    /// Send payment settings update
    public static var sendPaymentSettingsUpdate: String { return L10n.tr("Reason", "sendPaymentSettingsUpdate", fallback: "Send payment settings update") }
    /// Send target by price
    public static var sendTargetByPrice: String { return L10n.tr("Reason", "sendTargetByPrice", fallback: "Send target by price") }
    /// Set Instagram chat ID
    public static var setInstagramChatId: String { return L10n.tr("Reason", "setInstagramChatId", fallback: "Set Instagram chat ID") }
    /// Set poster ID
    public static var setPosterId: String { return L10n.tr("Reason", "setPosterId", fallback: "Set poster ID") }
    /// Set Telegram chat ID
    public static var setTelegramChatId: String { return L10n.tr("Reason", "setTelegramChatId", fallback: "Set Telegram chat ID") }
    /// Set Telegram username
    public static var setTelegramUsername: String { return L10n.tr("Reason", "setTelegramUsername", fallback: "Set Telegram username") }
    /// Create SMS gateway
    public static var smsGatewayCreate: String { return L10n.tr("Reason", "smsGatewayCreate", fallback: "Create SMS gateway") }
    /// Delete SMS gateway
    public static var smsGatewayDelete: String { return L10n.tr("Reason", "smsGatewayDelete", fallback: "Delete SMS gateway") }
    /// Update selected SMS gateway
    public static var smsGatewaySelectedUpdate: String { return L10n.tr("Reason", "smsGatewaySelectedUpdate", fallback: "Update selected SMS gateway") }
    /// Update SMS gateway type
    public static var smsGatewayTypeUpdate: String { return L10n.tr("Reason", "smsGatewayTypeUpdate", fallback: "Update SMS gateway type") }
    /// Update SMS gateway
    public static var smsGatewayUpdate: String { return L10n.tr("Reason", "smsGatewayUpdate", fallback: "Update SMS gateway") }
    /// Send SMS
    public static var smsSend: String { return L10n.tr("Reason", "smsSend", fallback: "Send SMS") }
    /// Send SMS to driver
    public static var smsSendDriver: String { return L10n.tr("Reason", "smsSendDriver", fallback: "Send SMS to driver") }
    /// Create SMS settings
    public static var smsSettingsCreate: String { return L10n.tr("Reason", "smsSettingsCreate", fallback: "Create SMS settings") }
    /// Assign permission to staff
    public static var staffAssignPermission: String { return L10n.tr("Reason", "staffAssignPermission", fallback: "Assign permission to staff") }
    /// Record staff check-in
    public static var staffCheckIn: String { return L10n.tr("Reason", "staffCheckIn", fallback: "Record staff check-in") }
    /// Record staff check-out
    public static var staffCheckOut: String { return L10n.tr("Reason", "staffCheckOut", fallback: "Record staff check-out") }
    /// Remove staff from branch
    public static var staffDeleteBranch: String { return L10n.tr("Reason", "staffDeleteBranch", fallback: "Remove staff from branch") }
    /// Remove staff working hours
    public static var staffDeleteWorkly: String { return L10n.tr("Reason", "staffDeleteWorkly", fallback: "Remove staff working hours") }
    /// Add staff to branch
    public static var staffJoinBranch: String { return L10n.tr("Reason", "staffJoinBranch", fallback: "Add staff to branch") }
    /// Set staff working hours
    public static var staffSetWorkly: String { return L10n.tr("Reason", "staffSetWorkly", fallback: "Set staff working hours") }
    /// Update staff permissions
    public static var staffUpdatePermissions: String { return L10n.tr("Reason", "staffUpdatePermissions", fallback: "Update staff permissions") }
    /// Create stop list
    public static var stopListCreate: String { return L10n.tr("Reason", "stopListCreate", fallback: "Create stop list") }
    /// Create story
    public static var storyCreate: String { return L10n.tr("Reason", "storyCreate", fallback: "Create story") }
    /// Delete story
    public static var storyDelete: String { return L10n.tr("Reason", "storyDelete", fallback: "Delete story") }
    /// Create story info
    public static var storyInfoCreate: String { return L10n.tr("Reason", "storyInfoCreate", fallback: "Create story info") }
    /// Delete story info
    public static var storyInfoDelete: String { return L10n.tr("Reason", "storyInfoDelete", fallback: "Delete story info") }
    /// Update story info
    public static var storyInfoUpdate: String { return L10n.tr("Reason", "storyInfoUpdate", fallback: "Update story info") }
    /// Update story info with priority
    public static var storyInfoUpdatePriority: String { return L10n.tr("Reason", "storyInfoUpdatePriority", fallback: "Update story info with priority") }
    /// Update story
    public static var storyUpdate: String { return L10n.tr("Reason", "storyUpdate", fallback: "Update story") }
    /// Update story with priority
    public static var storyUpdatePriority: String { return L10n.tr("Reason", "storyUpdatePriority", fallback: "Update story with priority") }
    /// Create system menu authorization
    public static var systemMenuAuthCreate: String { return L10n.tr("Reason", "systemMenuAuthCreate", fallback: "Create system menu authorization") }
    /// Delete system menu authorization
    public static var systemMenuAuthDelete: String { return L10n.tr("Reason", "systemMenuAuthDelete", fallback: "Delete system menu authorization") }
    /// Update system menu authorization
    public static var systemMenuAuthUpdate: String { return L10n.tr("Reason", "systemMenuAuthUpdate", fallback: "Update system menu authorization") }
    /// Create table
    public static var tableCreate: String { return L10n.tr("Reason", "tableCreate", fallback: "Create table") }
    /// Delete table
    public static var tableDelete: String { return L10n.tr("Reason", "tableDelete", fallback: "Delete table") }
    /// Update table
    public static var tableUpdate: String { return L10n.tr("Reason", "tableUpdate", fallback: "Update table") }
    /// Create tag
    public static var tagCreate: String { return L10n.tr("Reason", "tagCreate", fallback: "Create tag") }
    /// Delete tag
    public static var tagDelete: String { return L10n.tr("Reason", "tagDelete", fallback: "Delete tag") }
    /// Update tag
    public static var tagUpdate: String { return L10n.tr("Reason", "tagUpdate", fallback: "Update tag") }
    /// Assign user in Telegram
    public static var telegramAssignUser: String { return L10n.tr("Reason", "telegramAssignUser", fallback: "Assign user in Telegram") }
    /// Create user in Telegram
    public static var telegramCreateUser: String { return L10n.tr("Reason", "telegramCreateUser", fallback: "Create user in Telegram") }
    /// Get Telegram chat history
    public static var telegramGetChatHistory: String { return L10n.tr("Reason", "telegramGetChatHistory", fallback: "Get Telegram chat history") }
    /// Search user in Telegram
    public static var telegramSearchUser: String { return L10n.tr("Reason", "telegramSearchUser", fallback: "Search user in Telegram") }
    /// Search user in Telegram from database
    public static var telegramSearchUserFromDb: String { return L10n.tr("Reason", "telegramSearchUserFromDb", fallback: "Search user in Telegram from database") }
    /// Send message via Telegram
    public static var telegramSendMessage: String { return L10n.tr("Reason", "telegramSendMessage", fallback: "Send message via Telegram") }
    /// Create ticket
    public static var ticketCreate: String { return L10n.tr("Reason", "ticketCreate", fallback: "Create ticket") }
    /// Delete ticket
    public static var ticketDelete: String { return L10n.tr("Reason", "ticketDelete", fallback: "Delete ticket") }
    /// Create ticket theme
    public static var ticketThemeCreate: String { return L10n.tr("Reason", "ticketThemeCreate", fallback: "Create ticket theme") }
    /// Delete ticket theme
    public static var ticketThemeDelete: String { return L10n.tr("Reason", "ticketThemeDelete", fallback: "Delete ticket theme") }
    /// Update ticket theme
    public static var ticketThemeUpdate: String { return L10n.tr("Reason", "ticketThemeUpdate", fallback: "Update ticket theme") }
    /// Update ticket
    public static var ticketUpdate: String { return L10n.tr("Reason", "ticketUpdate", fallback: "Update ticket") }
    /// Update ticket status
    public static var ticketUpdateStatus: String { return L10n.tr("Reason", "ticketUpdateStatus", fallback: "Update ticket status") }
    /// Create task
    public static var todoCreate: String { return L10n.tr("Reason", "todoCreate", fallback: "Create task") }
    /// Delete task
    public static var todoDelete: String { return L10n.tr("Reason", "todoDelete", fallback: "Delete task") }
    /// Create task status
    public static var todoStatusCreate: String { return L10n.tr("Reason", "todoStatusCreate", fallback: "Create task status") }
    /// Delete task status
    public static var todoStatusDelete: String { return L10n.tr("Reason", "todoStatusDelete", fallback: "Delete task status") }
    /// Update task status
    public static var todoStatusUpdate: String { return L10n.tr("Reason", "todoStatusUpdate", fallback: "Update task status") }
    /// Update task
    public static var todoUpdate: String { return L10n.tr("Reason", "todoUpdate", fallback: "Update task") }
    /// Update task status
    public static var todoUpdateStatus: String { return L10n.tr("Reason", "todoUpdateStatus", fallback: "Update task status") }
    /// Create transport
    public static var transportCreate: String { return L10n.tr("Reason", "transportCreate", fallback: "Create transport") }
    /// Delete transport
    public static var transportDelete: String { return L10n.tr("Reason", "transportDelete", fallback: "Delete transport") }
    /// Update transport
    public static var transportUpdate: String { return L10n.tr("Reason", "transportUpdate", fallback: "Update transport") }
    /// Create unit
    public static var unitCreate: String { return L10n.tr("Reason", "unitCreate", fallback: "Create unit") }
    /// Delete unit
    public static var unitDelete: String { return L10n.tr("Reason", "unitDelete", fallback: "Delete unit") }
    /// Update order state
    public static var unitOrderStateUpdate: String { return L10n.tr("Reason", "unitOrderStateUpdate", fallback: "Update order state") }
    /// Update order
    public static var unitOrderUpdate: String { return L10n.tr("Reason", "unitOrderUpdate", fallback: "Update order") }
    /// Update unit
    public static var unitUpdate: String { return L10n.tr("Reason", "unitUpdate", fallback: "Update unit") }
    /// Update address
    public static var updateAddress: String { return L10n.tr("Reason", "updateAddress", fallback: "Update address") }
    /// Update all payment merchants
    public static var updateAllPaymentMerchant: String { return L10n.tr("Reason", "updateAllPaymentMerchant", fallback: "Update all payment merchants") }
    /// Update badge
    public static var updateBadge: String { return L10n.tr("Reason", "updateBadge", fallback: "Update badge") }
    /// Update branch
    public static var updateBranch: String { return L10n.tr("Reason", "updateBranch", fallback: "Update branch") }
    /// Update branch settings
    public static var updateBranchSettings: String { return L10n.tr("Reason", "updateBranchSettings", fallback: "Update branch settings") }
    /// Update branch work hours
    public static var updateBranchWorkHours: String { return L10n.tr("Reason", "updateBranchWorkHours", fallback: "Update branch work hours") }
    /// Update cashback
    public static var updateCashback: String { return L10n.tr("Reason", "updateCashback", fallback: "Update cashback") }
    /// Update cashback settings
    public static var updateCashbackSettings: String { return L10n.tr("Reason", "updateCashbackSettings", fallback: "Update cashback settings") }
    /// Update courier status
    public static var updateCourierStatus: String { return L10n.tr("Reason", "updateCourierStatus", fallback: "Update courier status") }
    /// Update Firebase token
    public static var updateFirebaseToken: String { return L10n.tr("Reason", "updateFirebaseToken", fallback: "Update Firebase token") }
    /// Update inventory amount
    public static var updateInventoryAmount: String { return L10n.tr("Reason", "updateInventoryAmount", fallback: "Update inventory amount") }
    /// Update branch inventory amount
    public static var updateInventoryAmountBranch: String { return L10n.tr("Reason", "updateInventoryAmountBranch", fallback: "Update branch inventory amount") }
    /// Update merchant inventory amount
    public static var updateInventoryAmountMerchant: String { return L10n.tr("Reason", "updateInventoryAmountMerchant", fallback: "Update merchant inventory amount") }
    /// Update merchant
    public static var updateMerchant: String { return L10n.tr("Reason", "updateMerchant", fallback: "Update merchant") }
    /// Update merchant contact
    public static var updateMerchantContact: String { return L10n.tr("Reason", "updateMerchantContact", fallback: "Update merchant contact") }
    /// Update merchant poster
    public static var updateMerchantPoster: String { return L10n.tr("Reason", "updateMerchantPoster", fallback: "Update merchant poster") }
    /// Localizable.strings
    ///   
    /// 
    ///   Created by Bilol Sanatillayev on 02/12/24.
    public static var updatePassword: String { return L10n.tr("Reason", "updatePassword", fallback: "Update password") }
    /// Update phone number
    public static var updatePhone: String { return L10n.tr("Reason", "updatePhone", fallback: "Update phone number") }
    /// Update product code
    public static var updateProductCode: String { return L10n.tr("Reason", "updateProductCode", fallback: "Update product code") }
    /// Update product name from LaPoster
    public static var updateProductNameFromLaposter: String { return L10n.tr("Reason", "updateProductNameFromLaposter", fallback: "Update product name from LaPoster") }
    /// Update first product name from LaPoster
    public static var updateProductNameFromLaposterOne: String { return L10n.tr("Reason", "updateProductNameFromLaposterOne", fallback: "Update first product name from LaPoster") }
    /// Update product type
    public static var updateProductType: String { return L10n.tr("Reason", "updateProductType", fallback: "Update product type") }
    /// Update SMS content
    public static var updateSmsContent: String { return L10n.tr("Reason", "updateSmsContent", fallback: "Update SMS content") }
    /// Update staff
    public static var updateStaff: String { return L10n.tr("Reason", "updateStaff", fallback: "Update staff") }
    /// Update user
    public static var updateUser: String { return L10n.tr("Reason", "updateUser", fallback: "Update user") }
    /// Update vendor settings
    public static var updateVendorSettings: String { return L10n.tr("Reason", "updateVendorSettings", fallback: "Update vendor settings") }
    /// Validate product from poster
    public static var validateProductFromPoster: String { return L10n.tr("Reason", "validateProductFromPoster", fallback: "Validate product from poster") }
    /// Cancel Yandex by claim ID
    public static var yandexCancelByClaimId: String { return L10n.tr("Reason", "yandexCancelByClaimId", fallback: "Cancel Yandex by claim ID") }
    /// Cancel Yandex by order ID
    public static var yandexCancelByOrderId: String { return L10n.tr("Reason", "yandexCancelByOrderId", fallback: "Cancel Yandex by order ID") }
    /// Yandex cancellation info by claim ID
    public static var yandexCancelInfoByClaimId: String { return L10n.tr("Reason", "yandexCancelInfoByClaimId", fallback: "Yandex cancellation info by claim ID") }
    /// Yandex cancellation info by order ID
    public static var yandexCancelInfoByOrderId: String { return L10n.tr("Reason", "yandexCancelInfoByOrderId", fallback: "Yandex cancellation info by order ID") }
    /// Yandex pre-order price check
    public static var yandexCheckPricePreOrder: String { return L10n.tr("Reason", "yandexCheckPricePreOrder", fallback: "Yandex pre-order price check") }
    /// Yandex confirmation code
    public static var yandexConfirmationCode: String { return L10n.tr("Reason", "yandexConfirmationCode", fallback: "Yandex confirmation code") }
    /// Confirm Yandex by claim ID
    public static var yandexConfirmByClaimId: String { return L10n.tr("Reason", "yandexConfirmByClaimId", fallback: "Confirm Yandex by claim ID") }
    /// Confirm Yandex by order ID
    public static var yandexConfirmByOrderId: String { return L10n.tr("Reason", "yandexConfirmByOrderId", fallback: "Confirm Yandex by order ID") }
    /// Create Yandex order by operator
    public static var yandexCreateOrderOperator: String { return L10n.tr("Reason", "yandexCreateOrderOperator", fallback: "Create Yandex order by operator") }
    /// Manually create Yandex
    public static var yandexManuallyCreate: String { return L10n.tr("Reason", "yandexManuallyCreate", fallback: "Manually create Yandex") }
    /// Search Yandex order
    public static var yandexSearchOrder: String { return L10n.tr("Reason", "yandexSearchOrder", fallback: "Search Yandex order") }
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = TranslationProxy.translationLoader.translate(key, table, value)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

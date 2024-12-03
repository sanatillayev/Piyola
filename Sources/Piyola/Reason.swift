//
//  File.swift
//  
//
//  Created by Bilol Sanatillayev on 02/12/24.
//

import Foundation

public enum Reason: String, CaseIterable {
    case updatePassword = "UPDATE_PASSWORD"
    case addStaff = "ADD_STAFF"
    case updateStaff = "UPDATE_STAFF"
    case updateUser = "UPDATE_USER"
    case setTelegramChatId = "SET_TELEGRAM_CHAT_ID"
    case setInstagramChatId = "SET_INSTAGRAM_CHAT_ID"
    case setTelegramUsername = "SET_TELEGRAM_USERNAME"
    case updatePhone = "UPDATE_PHONE"
    case setPosterId = "SET_POSTER_ID"
    case deletePosterId = "DELETE_POSTER_ID"
    case updateCashback = "UPDATE_CASHBACK"
    case createReview = "CREATE_REVIEW"
    case deleteStaff = "DELETE_STAFF"
    case staffJoinBranch = "STAFF_JOIN_BRANCH"
    case staffSetWorkly = "STAFF_SET_WORKLY"
    case staffDeleteBranch = "STAFF_DELETE_BRANCH"
    case staffDeleteWorkly = "STAFF_DELETE_WORKLY"
    case staffUpdatePermissions = "STAFF_UPDATE_PERMISSIONS"
    case updateSmsContent = "UPDATE_SMS_CONTENT"
    case createMerchantContact = "CREATE_MERCHANT_CONTACT"
    case updateMerchantContact = "UPDATE_MERCHANT_CONTACT"
    case deleteMerchantContact = "DELETE_MERCHANT_CONTACT"
    case kellDeviceSessions = "KELL_DEVICE_SESSIONS"
    case updateFirebaseToken = "UPDATE_FIREBASE_TOKEN"
    case logout = "LOGOUT"
    case cityCreate = "CITY_CREATE"
    case cityUpdate = "CITY_UPDATE"
    case cityDelete = "CITY_DELETE"
    case cityMerchantCreate = "CITY_MERCHANT_CREATE"
    case cityMerchantDelete = "CITY_MERCHANT_DELETE"
    case updateCashbackSettings = "UPDATE_CASHBACK_SETTINGS"
    case createBranchWorkHours = "CREATE_BRANCH_WORK_HOURS"
    case updateBranchWorkHours = "UPDATE_BRANCH_WORK_HOURS"
    case updateBranchSettings = "UPDATE_BRANCH_SETTINGS"
    case createBranchSettings = "CREATE_BRANCH_SETTINGS"
    case createAddress = "CREATE_ADDRESS"
    case updateAddress = "UPDATE_ADDRESS"
    case deleteAddress = "DELETE_ADDRESS"
    case createAdmin = "CREATE_ADMIN"
    case createBadge = "CREATE_BADGE"
    case updateBadge = "UPDATE_BADGE"
    case deleteBadge = "DELETE_BADGE"
    case createBranch = "CREATE_BRANCH"
    case updateBranch = "UPDATE_BRANCH"
    case deleteBranch = "DELETE_BRANCH"
    case branchAssignCity = "BRANCH_ASSIGN_CITY"
    case branchAssignCompany = "BRANCH_ASSIGN_COMPANY"
    case paymentAssignBranch = "PAYMENT_ASSIGN_BRANCH"
    case staffAssignPermission = "STAFF_ASSIGN_PERMISSION"
    case createMerchant = "CREATE_MERCHANT"
    case deleteMerchant = "DELETE_MERCHANT"
    case updateMerchant = "UPDATE_MERCHANT"
    case updateMerchantPoster = "UPDATE_MERCHANT_POSTER"
    case systemMenuAuthCreate = "SYSTEM_MENU_AUTH_CREATE"
    case systemMenuAuthUpdate = "SYSTEM_MENU_AUTH_UPDATE"
    case systemMenuAuthDelete = "SYSTEM_MENU_AUTH_DELETE"
    case botCredentialsCreate = "BOT_CREDENTIALS_CREATE"
    case botCredentialsUpdate = "BOT_CREDENTIALS_UPDATE"
    case courierBotCredentialsUpdate = "COURIER_BOT_CREDENTIALS_UPDATE"
    case botSettingsUpdate = "BOT_SETTINGS_UPDATE"
    case unitOrderStateUpdate = "UNIT_ORDER_STATE_UPDATE"
    case unitOrderUpdate = "UNIT_ORDER_UPDATE"
    case addressTargetCreate = "ADDRESS_TARGET_CREATE"
    case addressTargetUpdate = "ADDRESS_TARGET_UPDATE"
    case addressTargetDelete = "ADDRESS_TARGET_DELETE"
    case analyticCreate = "ANALYTIC_CREATE"
    case bannerCreate = "BANNER_CREATE"
    case bannerUpdate = "BANNER_UPDATE"
    case bannerDelete = "BANNER_DELETE"
    case branchAppSettingsUpdate = "BRANCH_APP_SETTINGS_UPDATE"
    case collectorSettingsUpdate = "COLLECTOR_SETTINGS_UPDATE"
    case companyPoliciesUpdate = "COMPANY_POLICIES_UPDATE"
    case knowledgeCreate = "KNOWLEDGE_CREATE"
    case knowledgeUpdate = "KNOWLEDGE_UPDATE"
    case knowledgeDelete = "KNOWLEDGE_DELETE"
    case merchantMobileSettingsUpdate = "MERCHANT_MOBILE_SETTINGS_UPDATE"
    case merchantQrSettingsUpdate = "MERCHANT_QR_SETTINGS_UPDATE"
    case merchantWebSettingsUpdate = "MERCHANT_WEB_SETTINGS_UPDATE"
    case ticketUpdateStatus = "TICKET_UPDATE_STATUS"
    case ticketDelete = "TICKET_DELETE"
    case ticketUpdate = "TICKET_UPDATE"
    case ticketCreate = "TICKET_CREATE"
    case ticketThemeCreate = "TICKET_THEME_CREATE"
    case ticketThemeUpdate = "TICKET_THEME_UPDATE"
    case ticketThemeDelete = "TICKET_THEME_DELETE"
    case todoCreate = "TODO_CREATE"
    case todoUpdate = "TODO_UPDATE"
    case todoDelete = "TODO_DELETE"
    case todoUpdateStatus = "TODO_UPDATE_STATUS"
    case todoStatusCreate = "TODO_STATUS_CREATE"
    case todoStatusUpdate = "TODO_STATUS_UPDATE"
    case todoStatusDelete = "TODO_STATUS_DELETE"
    case updateVendorSettings = "UPDATE_VENDOR_SETTINGS"
    case contractCreate = "CONTRACT_CREATE"
    case contractUpdate = "CONTRACT_UPDATE"
    case contractDelete = "CONTRACT_DELETE"
    case factoryCreate = "FACTORY_CREATE"
    case factoryUpdate = "FACTORY_UPDATE"
    case factoryDelete = "FACTORY_DELETE"
    case incomeCreate = "INCOME_CREATE"
    case incomeUpdate = "INCOME_UPDATE"
    case outcomeCreate = "OUTCOME_CREATE"
    case outcomeUpdate = "OUTCOME_UPDATE"
    case providerPaymentCreate = "PROVIDER_PAYMENT_CREATE"
    case providerPaymentUpdate = "PROVIDER_PAYMENT_UPDATE"
    case providerPaymentDelete = "PROVIDER_PAYMENT_DELETE"
    case productUnitCreate = "PRODUCT_UNIT_CREATE"
    case productUnitDelete = "PRODUCT_UNIT_DELETE"
    case providerCreate = "PROVIDER_CREATE"
    case providerUpdate = "PROVIDER_UPDATE"
    case providerDelete = "PROVIDER_DELETE"
    case providerTagCreate = "PROVIDER_TAG_CREATE"
    case providerTagDelete = "PROVIDER_TAG_DELETE"
    case tagCreate = "TAG_CREATE"
    case tagUpdate = "TAG_UPDATE"
    case tagDelete = "TAG_DELETE"
    case branchTransactionCreate = "BRANCH_TRANSACTION_CREATE"
    case branchTransactionUpdate = "BRANCH_TRANSACTION_UPDATE"
    case branchTransactionDelete = "BRANCH_TRANSACTION_DELETE"
    case unitCreate = "UNIT_CREATE"
    case unitUpdate = "UNIT_UPDATE"
    case unitDelete = "UNIT_DELETE"
    case updateInventoryAmountMerchant = "UPDATE_INVENTORY_AMOUNT_MERCHANT"
    case updateInventoryAmountBranch = "UPDATE_INVENTORY_AMOUNT_BRANCH"
    case updateInventoryAmount = "UPDATE_INVENTORY_AMOUNT"
    case candidateDelete = "CANDIDATE_DELETE"
    case candidateCreate = "CANDIDATE_CREATE"
    case candidateUpdate = "CANDIDATE_UPDATE"
    case staffCheckIn = "STAFF_CHECK_IN"
    case staffCheckOut = "STAFF_CHECK_OUT"
    case educationCreate = "EDUCATION_CREATE"
    case educationUpdate = "EDUCATION_UPDATE"
    case educationDelete = "EDUCATION_DELETE"
    case historyCreate = "HISTORY_CREATE"
    case historyDelete = "HISTORY_DELETE"
    case categoryCreate = "CATEGORY_CREATE"
    case categoryUpdate = "CATEGORY_UPDATE"
    case categoryDelete = "CATEGORY_DELETE"
    case extraDelete = "EXTRA_DELETE"
    case extraUpdate = "EXTRA_UPDATE"
    case extraCreate = "EXTRA_CREATE"
    case groupDelete = "GROUP_DELETE"
    case groupUpdate = "GROUP_UPDATE"
    case groupCreate = "GROUP_CREATE"
    case labelCreate = "LABEL_CREATE"
    case labelUpdate = "LABEL_UPDATE"
    case labelDelete = "LABEL_DELETE"
    case modificationBranchCreate = "MODIFICATION_BRANCH_CREATE"
    case modificationBranchUpdate = "MODIFICATION_BRANCH_UPDATE"
    case modificationBranchDelete = "MODIFICATION_BRANCH_DELETE"
    case modificationCreate = "MODIFICATION_CREATE"
    case modificationUpdate = "MODIFICATION_UPDATE"
    case modificationDelete = "MODIFICATION_DELETE"
    case modificationGroupBranchCreate = "MODIFICATION_GROUP_BRANCH_CREATE"
    case modificationGroupBranchUpdate = "MODIFICATION_GROUP_BRANCH_UPDATE"
    case modificationGroupBranchDelete = "MODIFICATION_GROUP_BRANCH_DELETE"
    case modificationGroupCreate = "MODIFICATION_GROUP_CREATE"
    case modificationGroupUpdate = "MODIFICATION_GROUP_UPDATE"
    case modificationGroupDelete = "MODIFICATION_GROUP_DELETE"
    case importProductFromPoster = "IMPORT_PRODUCT_FROM_POSTER"
    case validateProductFromPoster = "VALIDATE_PRODUCT_FROM_POSTER"
    case createProductFromPoster = "CREATE_PRODUCT_FROM_POSTER"
    case importProductFromPosterWithCategory = "IMPORT_PRODUCT_FROM_POSTER_WITH_CATEGORY"
    case reCreateProductFromPoster = "RE_CREATE_PRODUCT_FROM_POSTER"
    case productBranchCreate = "PRODUCT_BRANCH_CREATE"
    case productBranchDelete = "PRODUCT_BRANCH_DELETE"
    case productCommentCreate = "PRODUCT_COMMENT_CREATE"
    case productCommentUpdate = "PRODUCT_COMMENT_UPDATE"
    case productCommentDelete = "PRODUCT_COMMENT_DELETE"
    case productCreate = "PRODUCT_CREATE"
    case productUpdate = "PRODUCT_UPDATE"
    case productDelete = "PRODUCT_DELETE"
    case updateProductType = "UPDATE_PRODUCT_TYPE"
    case updateProductCode = "UPDATE_PRODUCT_CODE"
    case productFavouriteCreate = "PRODUCT_FAVOURITE_CREATE"
    case productFavouriteUpdate = "PRODUCT_FAVOURITE_UPDATE"
    case productFavouriteDelete = "PRODUCT_FAVOURITE_DELETE"
    case productLabelCreate = "PRODUCT_LABEL_CREATE"
    case productLabelDelete = "PRODUCT_LABEL_DELETE"
    case stopListCreate = "STOP_LIST_CREATE"
    case updateProductNameFromLaposter = "UPDATE_PRODUCT_NAME_FROM_LAPOSTER"
    case updateProductNameFromLaposterOne = "UPDATE_PRODUCT_NAME_FROM_LAPOSTER_ONE"
    case bitoPaymentDelete = "BITO_PAYMENT_DELETE"
    case bitoPaymentCreate = "BITO_PAYMENT_CREATE"
    case bitoStateDelete = "BITO_STATE_DELETE"
    case bitoStateCreate = "BITO_STATE_CREATE"
    case iikoPaymentCreate = "IIKO_PAYMENT_CREATE"
    case iikoPaymentDelete = "IIKO_PAYMENT_DELETE"
    case restaurantCreate = "RESTAURANT_CREATE"
    case restaurantDelete = "RESTAURANT_DELETE"
    case merchantPosterUpdate = "MERCHANT_POSTER_UPDATE"
    case merchantPosterCommentUpdate = "MERCHANT_POSTER_COMMENT_UPDATE"
    case merchantPosterCommentDelete = "MERCHANT_POSTER_COMMENT_DELETE"
    case resendOrderToPoster = "RESEND_ORDER_TO_POSTER"
    case posterStoplistUpdate = "POSTER_STOPLIST_UPDATE"
    case posterPaymentTransaction = "POSTER_PAYMENT_TRANSACTION"
    case paymentOutcomeCreate = "PAYMENT_OUTCOME_CREATE"
    case paymentTransactionCreate = "PAYMENT_TRANSACTION_CREATE"
    case paymentTransactionDriverCreate = "PAYMENT_TRANSACTION_DRIVER_CREATE"
    case otherPaymentTypeUpdate = "OTHER_PAYMENT_TYPE_UPDATE"
    case otherPaymentTypeCreate = "OTHER_PAYMENT_TYPE_CREATE"
    case otherPaymentTypeDelete = "OTHER_PAYMENT_TYPE_DELETE"
    case paymentSettingsCreate = "PAYMENT_SETTINGS_CREATE"
    case paymentSettingsDelete = "PAYMENT_SETTINGS_DELETE"
    case companyUpdate = "COMPANY_UPDATE"
    case expenseTypeCreate = "EXPENSE_TYPE_CREATE"
    case expenseTypeUpdate = "EXPENSE_TYPE_UPDATE"
    case expenseTypeDelete = "EXPENSE_TYPE_DELETE"
    case eposCreate = "EPOS_CREATE"
    case eposSettingsCreate = "EPOS_SETTINGS_CREATE"
    case eposSettingsUpdate = "EPOS_SETTINGS_UPDATE"
    case eposSettingsDelete = "EPOS_SETTINGS_DELETE"
    case availabilityCreate = "AVAILABILITY_CREATE"
    case availabilityDelete = "AVAILABILITY_DELETE"
    case updateAllPaymentMerchant = "UPDATE_ALL_PAYMENT_MERCHANT"
    case paymentMerchantCreate = "PAYMENT_MERCHANT_CREATE"
    case paymentMerchantUpdate = "PAYMENT_MERCHANT_UPDATE"
    case paymentMerchantDelete = "PAYMENT_MERCHANT_DELETE"
    case paymentMerchantActive = "PAYMENT_MERCHANT_ACTIVE"
    case paymentAccountCreate = "PAYMENT_ACCOUNT_CREATE"
    case paymentAccountUpdate = "PAYMENT_ACCOUNT_UPDATE"
    case paymentAccountDelete = "PAYMENT_ACCOUNT_DELETE"
    case promoCreate = "PROMO_CREATE"
    case promoUpdate = "PROMO_UPDATE"
    case promoDelete = "PROMO_DELETE"
    case generateNewPromo = "GENERATE_NEW_PROMO"
    case addPromoToUser = "ADD_PROMO_TO_USER"
    case orderFeedbackCreate = "ORDER_FEEDBACK_CREATE"
    case orderFeedbackUpdate = "ORDER_FEEDBACK_UPDATE"
    case orderFeedbackDelete = "ORDER_FEEDBACK_DELETE"
    case orderMerchantSettingsCreate = "ORDER_MERCHANT_SETTINGS_CREATE"
    case orderMerchantSettingsUpdate = "ORDER_MERCHANT_SETTINGS_UPDATE"
    case orderDraftUpdate = "ORDER_DRAFT_UPDATE"
    case orderDraftCreate = "ORDER_DRAFT_CREATE"
    case orderDraftDelete = "ORDER_DRAFT_DELETE"
    case orderCreate = "ORDER_CREATE"
    case orderSendMessageTelegram = "ORDER_SEND_MESSAGE_TELEGRAM"
    case orderAtTimeCreate = "ORDER_AT_TIME_CREATE"
    case orderSendPoster = "ORDER_SEND_POSTER"
    case orderProductsRefresh = "ORDER_PRODUCTS_REFRESH"
    case receiptSendClient = "RECEIPT_SEND_CLIENT"
    case orderUpdatePaymentType = "ORDER_UPDATE_PAYMENT_TYPE"
    case orderJoinToCourier = "ORDER_JOIN_TO_COURIER"
    case orderListJoinToCourier = "ORDER_LIST_JOIN_TO_COURIER"
    case orderPaidByOperator = "ORDER_PAID_BY_OPERATOR"
    case orderUpdateAddressAndPaymentType = "ORDER_UPDATE_ADDRESS_AND_PAYMENT_TYPE"
    case orderCommentUpdate = "ORDER_COMMENT_UPDATE"
    case courierOrderCommentUpdate = "COURIER_ORDER_COMMENT_UPDATE"
    case editPickUpOrderStatus = "EDIT_PICK_UP_ORDER_STATUS"
    case allOrdersStatusChange = "ALL_ORDERS_STATUS_CHANGE"
    case orderEditStatus = "ORDER_EDIT_STATUS"
    case orderEditDeliveryType = "ORDER_EDIT_DELIVERY_TYPE"
    case updateCourierStatus = "UPDATE_COURIER_STATUS"
    case feedbackToCourier = "FEEDBACK_TO_COURIER"
    case orderChangeServiceType = "ORDER_CHANGE_SERVICE_TYPE"
    case changeAggregatorOrder = "CHANGE_AGGREGATOR_ORDER"
    case orderSetCollectorImage = "ORDER_SET_COLLECTOR_IMAGE"
    case orderSetOperator = "ORDER_SET_OPERATOR"
    case orderCollectorCourierPaid = "ORDER_COLLECTOR_COURIER_PAID"
    case smsGatewayCreate = "SMS_GATEWAY_CREATE"
    case smsGatewayUpdate = "SMS_GATEWAY_UPDATE"
    case smsGatewayTypeUpdate = "SMS_GATEWAY_TYPE_UPDATE"
    case smsGatewaySelectedUpdate = "SMS_GATEWAY_SELECTED_UPDATE"
    case smsGatewayDelete = "SMS_GATEWAY_DELETE"
    case newsCreate = "NEWS_CREATE"
    case newsUpdate = "NEWS_UPDATE"
    case newsDelete = "NEWS_DELETE"
    case sendTargetByPrice = "SEND_TARGET_BY_PRICE"
    case smsSendDriver = "SMS_SEND_DRIVER"
    case smsSettingsCreate = "SMS_SETTINGS_CREATE"
    case smsSend = "SMS_SEND"
    case storyInfoCreate = "STORY_INFO_CREATE"
    case storyInfoUpdate = "STORY_INFO_UPDATE"
    case storyInfoUpdatePriority = "STORY_INFO_UPDATE_PRIORITY"
    case storyInfoDelete = "STORY_INFO_DELETE"
    case storyCreate = "STORY_CREATE"
    case storyUpdate = "STORY_UPDATE"
    case storyUpdatePriority = "STORY_UPDATE_PRIORITY"
    case storyDelete = "STORY_DELETE"
    case driverSettingsUpdate = "DRIVER_SETTINGS_UPDATE"
    case notificationUpdate = "NOTIFICATION_UPDATE"
    case notificationDelete = "NOTIFICATION_DELETE"
    case sendPaymentSettingsUpdate = "SEND_PAYMENT_SETTINGS_UPDATE"
    case bookingCreate = "BOOKING_CREATE"
    case bookingUpdate = "BOOKING_UPDATE"
    case bookingUpdateStatus = "BOOKING_UPDATE_STATUS"
    case hallCreate = "HALL_CREATE"
    case hallUpdate = "HALL_UPDATE"
    case hallDelete = "HALL_DELETE"
    case dineOrderCreate = "DINE_ORDER_CREATE"
    case dineOrderUpdate = "DINE_ORDER_UPDATE"
    case dineOrderUpdateStatus = "DINE_ORDER_UPDATE_STATUS"
    case tableUpdate = "TABLE_UPDATE"
    case tableCreate = "TABLE_CREATE"
    case tableDelete = "TABLE_DELETE"
    case expressBranchUpdate = "EXPRESS_BRANCH_UPDATE"
    case expressProductRefresh = "EXPRESS_PRODUCT_REFRESH"
    case eatsOrderDelete = "EATS_ORDER_DELETE"
    case eatsOrderCreate = "EATS_ORDER_CREATE"
    case eatsOrderUpdateStatus = "EATS_ORDER_UPDATE_STATUS"
    case eatsSettingsUpdate = "EATS_SETTINGS_UPDATE"
    case callUpdate = "CALL_UPDATE"
    case callUpdateType = "CALL_UPDATE_TYPE"
    case callCreate = "CALL_CREATE"
    case operatorPhoneCreate = "OPERATOR_PHONE_CREATE"
    case operatorPhoneDelete = "OPERATOR_PHONE_DELETE"
    case areaUpdate = "AREA_UPDATE"
    case areaDelete = "AREA_DELETE"
    case calculateDeliveryPriceByOperator = "CALCULATE_DELIVERY_PRICE_BY_OPERATOR"
    case courierTariffUpdate = "COURIER_TARIFF_UPDATE"
    case courierTariffCreate = "COURIER_TARIFF_CREATE"
    case deliveryPriceCalculateSettingUpdate = "DELIVERY_PRICE_CALCULATE_SETTING_UPDATE"
    case deliverySettingsUpdate = "DELIVERY_SETTINGS_UPDATE"
    case deliveryTariffCreate = "DELIVERY_TARIFF_CREATE"
    case deliveryTariffUpdate = "DELIVERY_TARIFF_UPDATE"
    case deliveryTariffDelete = "DELIVERY_TARIFF_DELETE"
    case driverUpdateStatus = "DRIVER_UPDATE_STATUS"
    case driverSetBranchAndTariff = "DRIVER_SET_BRANCH_AND_TARIFF"
    case driverSetVehicle = "DRIVER_SET_VEHICLE"
    case findCourierSettingsUpdate = "FIND_COURIER_SETTINGS_UPDATE"
    case freeDeliveryUpdate = "FREE_DELIVERY_UPDATE"
    case freeDeliveryCreate = "FREE_DELIVERY_CREATE"
    case logistJoinBranch = "LOGIST_JOIN_BRANCH"
    case deliveryMapSettingsUpdate = "DELIVERY_MAP_SETTINGS_UPDATE"
    case merchantDeliveryKeysCreate = "MERCHANT_DELIVERY_KEYS_CREATE"
    case merchantDeliveryKeysUpdate = "MERCHANT_DELIVERY_KEYS_UPDATE"
    case merchantDeliveryKeysDelete = "MERCHANT_DELIVERY_KEYS_DELETE"
    case merchantDeliveryKeysUpdateYandex = "MERCHANT_DELIVERY_KEYS_UPDATE_YANDEX"
    case merchantDeliveryKeysUpdateActiveTypes = "MERCHANT_DELIVERY_KEYS_UPDATE_ACTIVE_TYPES"
    case millenniumSettingsUpdate = "MILLENNIUM_SETTINGS_UPDATE"
    case orderDeliveredByCourier = "ORDER_DELIVERED_BY_COURIER"
    case ordersDeliveryOnWay = "ORDERS_DELIVERY_ON_WAY"
    case orderDeliveryReturned = "ORDER_DELIVERY_RETURNED"
    case millenniumCheckPricePreOrder = "MILLENNIUM_CHECK_PRICE_PRE_ORDER"
    case millenniumOrderCreate = "MILLENNIUM_ORDER_CREATE"
    case millenniumOrderCanceled = "MILLENNIUM_ORDER_CANCELED"
    case createTransactionByOperator = "CREATE_TRANSACTION_BY_OPERATOR"
    case transportCreate = "TRANSPORT_CREATE"
    case transportUpdate = "TRANSPORT_UPDATE"
    case transportDelete = "TRANSPORT_DELETE"
    case yandexCheckPricePreOrder = "YANDEX_CHECK_PRICE_PRE_ORDER"
    case yandexCreateOrderOperator = "YANDEX_CREATE_ORDER_OPERATOR"
    case yandexManuallyCreate = "YANDEX_MANUALLY_CREATE"
    case yandexConfirmByOrderId = "YANDEX_CONFIRM_BY_ORDER_ID"
    case yandexConfirmByClaimId = "YANDEX_CONFIRM_BY_CLAIM_ID"
    case yandexCancelInfoByOrderId = "YANDEX_CANCEL_INFO_BY_ORDER_ID"
    case yandexCancelInfoByClaimId = "YANDEX_CANCEL_INFO_BY_CLAIM_ID"
    case yandexCancelByOrderId = "YANDEX_CANCEL_BY_ORDER_ID"
    case yandexCancelByClaimId = "YANDEX_CANCEL_BY_CLAIM_ID"
    case yandexConfirmationCode = "YANDEX_CONFIRMATION_CODE"
    case manuallyOrderUpdate = "MANUALLY_ORDER_UPDATE"
    case yandexSearchOrder = "YANDEX_SEARCH_ORDER"
    case telegramSendMessage = "TELEGRAM_SEND_MESSAGE"
    case telegramAssignUser = "TELEGRAM_ASSIGN_USER"
    case telegramCreateUser = "TELEGRAM_CREATE_USER"
    case telegramSearchUser = "TELEGRAM_SEARCH_USER"
    case telegramSearchUserFromDb = "TELEGRAM_SEARCH_USER_FROM_DB"
    case telegramGetChatHistory = "TELEGRAM_GET_CHAT_HISTORY"
    case clientFeedbackSettingsUpdate = "CLIENT_FEEDBACK_SETTINGS_UPDATE"
}

extension Reason {
    public var translation: String  {
        switch self {
        case .updatePassword: L10n.Reason.updatePassword
        case .addStaff: L10n.Reason.addStaff
        case .updateStaff: L10n.Reason.updateStaff
        case .updateUser: L10n.Reason.updateUser
        case .setTelegramChatId: L10n.Reason.setTelegramChatId
        case .setInstagramChatId: L10n.Reason.setInstagramChatId
        case .setTelegramUsername: L10n.Reason.setTelegramUsername
        case .updatePhone: L10n.Reason.updatePhone
        case .setPosterId: L10n.Reason.setPosterId
        case .deletePosterId: L10n.Reason.deletePosterId
        case .updateCashback: L10n.Reason.updateCashback
        case .createReview: L10n.Reason.createReview
        case .deleteStaff: L10n.Reason.deleteStaff
        case .staffJoinBranch: L10n.Reason.staffJoinBranch
        case .staffSetWorkly: L10n.Reason.staffSetWorkly
        case .staffDeleteBranch: L10n.Reason.staffDeleteBranch
        case .staffDeleteWorkly: L10n.Reason.staffDeleteWorkly
        case .staffUpdatePermissions: L10n.Reason.staffUpdatePermissions
        case .updateSmsContent: L10n.Reason.updateSmsContent
        case .createMerchantContact: L10n.Reason.createMerchantContact
        case .updateMerchantContact: L10n.Reason.updateMerchantContact
        case .deleteMerchantContact: L10n.Reason.deleteMerchantContact
        case .kellDeviceSessions: L10n.Reason.kellDeviceSessions
        case .updateFirebaseToken: L10n.Reason.updateFirebaseToken
        case .logout: L10n.Reason.logout
        case .cityCreate: L10n.Reason.cityCreate
        case .cityUpdate: L10n.Reason.cityUpdate
        case .cityDelete: L10n.Reason.cityDelete
        case .cityMerchantCreate: L10n.Reason.cityMerchantCreate
        case .cityMerchantDelete: L10n.Reason.cityMerchantDelete
        case .updateCashbackSettings: L10n.Reason.updateCashbackSettings
        case .createBranchWorkHours: L10n.Reason.createBranchWorkHours
        case .updateBranchWorkHours: L10n.Reason.updateBranchWorkHours
        case .updateBranchSettings: L10n.Reason.updateBranchSettings
        case .createBranchSettings: L10n.Reason.createBranchSettings
        case .createAddress: L10n.Reason.createAddress
        case .updateAddress: L10n.Reason.updateAddress
        case .deleteAddress: L10n.Reason.deleteAddress
        case .createAdmin: L10n.Reason.createAdmin
        case .createBadge: L10n.Reason.createBadge
        case .updateBadge: L10n.Reason.updateBadge
        case .deleteBadge: L10n.Reason.deleteBadge
        case .createBranch: L10n.Reason.createBranch
        case .updateBranch: L10n.Reason.updateBranch
        case .deleteBranch: L10n.Reason.deleteBranch
        case .branchAssignCity: L10n.Reason.branchAssignCity
        case .branchAssignCompany: L10n.Reason.branchAssignCompany
        case .paymentAssignBranch: L10n.Reason.paymentAssignBranch
        case .staffAssignPermission: L10n.Reason.staffAssignPermission
        case .createMerchant: L10n.Reason.createMerchant
        case .deleteMerchant: L10n.Reason.deleteMerchant
        case .updateMerchant: L10n.Reason.updateMerchant
        case .updateMerchantPoster: L10n.Reason.updateMerchantPoster
        case .systemMenuAuthCreate: L10n.Reason.systemMenuAuthCreate
        case .systemMenuAuthUpdate: L10n.Reason.systemMenuAuthUpdate
        case .systemMenuAuthDelete: L10n.Reason.systemMenuAuthDelete
        case .botCredentialsCreate: L10n.Reason.botCredentialsCreate
        case .botCredentialsUpdate: L10n.Reason.botCredentialsUpdate
        case .courierBotCredentialsUpdate: L10n.Reason.courierBotCredentialsUpdate
        case .botSettingsUpdate: L10n.Reason.botSettingsUpdate
        case .unitOrderStateUpdate: L10n.Reason.unitOrderStateUpdate
        case .unitOrderUpdate: L10n.Reason.unitOrderUpdate
        case .addressTargetCreate: L10n.Reason.addressTargetCreate
        case .addressTargetUpdate: L10n.Reason.addressTargetUpdate
        case .addressTargetDelete: L10n.Reason.addressTargetDelete
        case .analyticCreate: L10n.Reason.analyticCreate
        case .bannerCreate: L10n.Reason.bannerCreate
        case .bannerUpdate: L10n.Reason.bannerUpdate
        case .bannerDelete: L10n.Reason.bannerDelete
        case .branchAppSettingsUpdate: L10n.Reason.branchAppSettingsUpdate
        case .collectorSettingsUpdate: L10n.Reason.collectorSettingsUpdate
        case .companyPoliciesUpdate: L10n.Reason.companyPoliciesUpdate
        case .knowledgeCreate: L10n.Reason.knowledgeCreate
        case .knowledgeUpdate: L10n.Reason.knowledgeUpdate
        case .knowledgeDelete: L10n.Reason.knowledgeDelete
        case .merchantMobileSettingsUpdate: L10n.Reason.merchantMobileSettingsUpdate
        case .merchantQrSettingsUpdate: L10n.Reason.merchantQrSettingsUpdate
        case .merchantWebSettingsUpdate: L10n.Reason.merchantWebSettingsUpdate
        case .ticketUpdateStatus: L10n.Reason.ticketUpdateStatus
        case .ticketDelete: L10n.Reason.ticketDelete
        case .ticketUpdate: L10n.Reason.ticketUpdate
        case .ticketCreate: L10n.Reason.ticketCreate
        case .ticketThemeCreate: L10n.Reason.ticketThemeCreate
        case .ticketThemeUpdate: L10n.Reason.ticketThemeUpdate
        case .ticketThemeDelete: L10n.Reason.ticketThemeDelete
        case .todoCreate: L10n.Reason.todoCreate
        case .todoUpdate: L10n.Reason.todoUpdate
        case .todoDelete: L10n.Reason.todoDelete
        case .todoUpdateStatus: L10n.Reason.todoUpdateStatus
        case .todoStatusCreate: L10n.Reason.todoStatusCreate
        case .todoStatusUpdate: L10n.Reason.todoStatusUpdate
        case .todoStatusDelete: L10n.Reason.todoStatusDelete
        case .updateVendorSettings: L10n.Reason.updateVendorSettings
        case .contractCreate: L10n.Reason.contractCreate
        case .contractUpdate: L10n.Reason.contractUpdate
        case .contractDelete: L10n.Reason.contractDelete
        case .factoryCreate: L10n.Reason.factoryCreate
        case .factoryUpdate: L10n.Reason.factoryUpdate
        case .factoryDelete: L10n.Reason.factoryDelete
        case .incomeCreate: L10n.Reason.incomeCreate
        case .incomeUpdate: L10n.Reason.incomeUpdate
        case .outcomeCreate: L10n.Reason.outcomeCreate
        case .outcomeUpdate: L10n.Reason.outcomeUpdate
        case .providerPaymentCreate: L10n.Reason.providerPaymentCreate
        case .providerPaymentUpdate: L10n.Reason.providerPaymentUpdate
        case .providerPaymentDelete: L10n.Reason.providerPaymentDelete
        case .productUnitCreate: L10n.Reason.productUnitCreate
        case .productUnitDelete: L10n.Reason.productUnitDelete
        case .providerCreate: L10n.Reason.providerCreate
        case .providerUpdate: L10n.Reason.providerUpdate
        case .providerDelete: L10n.Reason.providerDelete
        case .providerTagCreate: L10n.Reason.providerTagCreate
        case .providerTagDelete: L10n.Reason.providerTagDelete
        case .tagCreate: L10n.Reason.tagCreate
        case .tagUpdate: L10n.Reason.tagUpdate
        case .tagDelete: L10n.Reason.tagDelete
        case .branchTransactionCreate: L10n.Reason.branchTransactionCreate
        case .branchTransactionUpdate: L10n.Reason.branchTransactionUpdate
        case .branchTransactionDelete: L10n.Reason.branchTransactionDelete
        case .unitCreate: L10n.Reason.unitCreate
        case .unitUpdate: L10n.Reason.unitUpdate
        case .unitDelete: L10n.Reason.unitDelete
        case .updateInventoryAmountMerchant: L10n.Reason.updateInventoryAmountMerchant
        case .updateInventoryAmountBranch: L10n.Reason.updateInventoryAmountBranch
        case .updateInventoryAmount: L10n.Reason.updateInventoryAmount
        case .candidateDelete: L10n.Reason.candidateDelete
        case .candidateCreate: L10n.Reason.candidateCreate
        case .candidateUpdate: L10n.Reason.candidateUpdate
        case .staffCheckIn: L10n.Reason.staffCheckIn
        case .staffCheckOut: L10n.Reason.staffCheckOut
        case .educationCreate: L10n.Reason.educationCreate
        case .educationUpdate: L10n.Reason.educationUpdate
        case .educationDelete: L10n.Reason.educationDelete
        case .historyCreate: L10n.Reason.historyCreate
        case .historyDelete: L10n.Reason.historyDelete
        case .categoryCreate: L10n.Reason.categoryCreate
        case .categoryUpdate: L10n.Reason.categoryUpdate
        case .categoryDelete: L10n.Reason.categoryDelete
        case .extraDelete: L10n.Reason.extraDelete
        case .extraUpdate: L10n.Reason.extraUpdate
        case .extraCreate: L10n.Reason.extraCreate
        case .groupDelete: L10n.Reason.groupDelete
        case .groupUpdate: L10n.Reason.groupUpdate
        case .groupCreate: L10n.Reason.groupCreate
        case .labelCreate: L10n.Reason.labelCreate
        case .labelUpdate: L10n.Reason.labelUpdate
        case .labelDelete: L10n.Reason.labelDelete
        case .modificationBranchCreate: L10n.Reason.modificationBranchCreate
        case .modificationBranchUpdate: L10n.Reason.modificationBranchUpdate
        case .modificationBranchDelete: L10n.Reason.modificationBranchDelete
        case .modificationCreate: L10n.Reason.modificationCreate
        case .modificationUpdate: L10n.Reason.modificationUpdate
        case .modificationDelete: L10n.Reason.modificationDelete
        case .modificationGroupBranchCreate: L10n.Reason.modificationGroupBranchCreate
        case .modificationGroupBranchUpdate: L10n.Reason.modificationGroupBranchUpdate
        case .modificationGroupBranchDelete: L10n.Reason.modificationGroupBranchDelete
        case .modificationGroupCreate: L10n.Reason.modificationGroupCreate
        case .modificationGroupUpdate: L10n.Reason.modificationGroupUpdate
        case .modificationGroupDelete: L10n.Reason.modificationGroupDelete
        case .importProductFromPoster: L10n.Reason.importProductFromPoster
        case .validateProductFromPoster: L10n.Reason.validateProductFromPoster
        case .createProductFromPoster: L10n.Reason.createProductFromPoster
        case .importProductFromPosterWithCategory: L10n.Reason.importProductFromPosterWithCategory
        case .reCreateProductFromPoster: L10n.Reason.reCreateProductFromPoster
        case .productBranchCreate: L10n.Reason.productBranchCreate
        case .productBranchDelete: L10n.Reason.productBranchDelete
        case .productCommentCreate: L10n.Reason.productCommentCreate
        case .productCommentUpdate: L10n.Reason.productCommentUpdate
        case .productCommentDelete: L10n.Reason.productCommentDelete
        case .productCreate: L10n.Reason.productCreate
        case .productUpdate: L10n.Reason.productUpdate
        case .productDelete: L10n.Reason.productDelete
        case .updateProductType: L10n.Reason.updateProductType
        case .updateProductCode: L10n.Reason.updateProductCode
        case .productFavouriteCreate: L10n.Reason.productFavouriteCreate
        case .productFavouriteUpdate: L10n.Reason.productFavouriteUpdate
        case .productFavouriteDelete: L10n.Reason.productFavouriteDelete
        case .productLabelCreate: L10n.Reason.productLabelCreate
        case .productLabelDelete: L10n.Reason.productLabelDelete
        case .stopListCreate: L10n.Reason.stopListCreate
        case .updateProductNameFromLaposter: L10n.Reason.updateProductNameFromLaposter
        case .updateProductNameFromLaposterOne: L10n.Reason.updateProductNameFromLaposterOne
        case .bitoPaymentDelete: L10n.Reason.bitoPaymentDelete
        case .bitoPaymentCreate: L10n.Reason.bitoPaymentCreate
        case .bitoStateDelete: L10n.Reason.bitoStateDelete
        case .bitoStateCreate: L10n.Reason.bitoStateCreate
        case .iikoPaymentCreate: L10n.Reason.iikoPaymentCreate
        case .iikoPaymentDelete: L10n.Reason.iikoPaymentDelete
        case .restaurantCreate: L10n.Reason.restaurantCreate
        case .restaurantDelete: L10n.Reason.restaurantDelete
        case .merchantPosterUpdate: L10n.Reason.merchantPosterUpdate
        case .merchantPosterCommentUpdate: L10n.Reason.merchantPosterCommentUpdate
        case .merchantPosterCommentDelete: L10n.Reason.merchantPosterCommentDelete
        case .resendOrderToPoster: L10n.Reason.resendOrderToPoster
        case .posterStoplistUpdate: L10n.Reason.posterStoplistUpdate
        case .posterPaymentTransaction: L10n.Reason.posterPaymentTransaction
        case .paymentOutcomeCreate: L10n.Reason.paymentOutcomeCreate
        case .paymentTransactionCreate: L10n.Reason.paymentTransactionCreate
        case .paymentTransactionDriverCreate: L10n.Reason.paymentTransactionDriverCreate
        case .otherPaymentTypeUpdate: L10n.Reason.otherPaymentTypeUpdate
        case .otherPaymentTypeCreate: L10n.Reason.otherPaymentTypeCreate
        case .otherPaymentTypeDelete: L10n.Reason.otherPaymentTypeDelete
        case .paymentSettingsCreate: L10n.Reason.paymentSettingsCreate
        case .paymentSettingsDelete: L10n.Reason.paymentSettingsDelete
        case .companyUpdate: L10n.Reason.companyUpdate
        case .expenseTypeCreate: L10n.Reason.expenseTypeCreate
        case .expenseTypeUpdate: L10n.Reason.expenseTypeUpdate
        case .expenseTypeDelete: L10n.Reason.expenseTypeDelete
        case .eposCreate: L10n.Reason.eposCreate
        case .eposSettingsCreate: L10n.Reason.eposSettingsCreate
        case .eposSettingsUpdate: L10n.Reason.eposSettingsUpdate
        case .eposSettingsDelete: L10n.Reason.eposSettingsDelete
        case .availabilityCreate: L10n.Reason.availabilityCreate
        case .availabilityDelete: L10n.Reason.availabilityDelete
        case .updateAllPaymentMerchant: L10n.Reason.updateAllPaymentMerchant
        case .paymentMerchantCreate: L10n.Reason.paymentMerchantCreate
        case .paymentMerchantUpdate: L10n.Reason.paymentMerchantUpdate
        case .paymentMerchantDelete: L10n.Reason.paymentMerchantDelete
        case .paymentMerchantActive: L10n.Reason.paymentMerchantActive
        case .paymentAccountCreate: L10n.Reason.paymentAccountCreate
        case .paymentAccountUpdate: L10n.Reason.paymentAccountUpdate
        case .paymentAccountDelete: L10n.Reason.paymentAccountDelete
        case .promoCreate: L10n.Reason.promoCreate
        case .promoUpdate: L10n.Reason.promoUpdate
        case .promoDelete: L10n.Reason.promoDelete
        case .generateNewPromo: L10n.Reason.generateNewPromo
        case .addPromoToUser: L10n.Reason.addPromoToUser
        case .orderFeedbackCreate: L10n.Reason.orderFeedbackCreate
        case .orderFeedbackUpdate: L10n.Reason.orderFeedbackUpdate
        case .orderFeedbackDelete: L10n.Reason.orderFeedbackDelete
        case .orderMerchantSettingsCreate: L10n.Reason.orderMerchantSettingsCreate
        case .orderMerchantSettingsUpdate: L10n.Reason.orderMerchantSettingsUpdate
        case .orderDraftUpdate: L10n.Reason.orderDraftUpdate
        case .orderDraftCreate: L10n.Reason.orderDraftCreate
        case .orderDraftDelete: L10n.Reason.orderDraftDelete
        case .orderCreate: L10n.Reason.orderCreate
        case .orderSendMessageTelegram: L10n.Reason.orderSendMessageTelegram
        case .orderAtTimeCreate: L10n.Reason.orderAtTimeCreate
        case .orderSendPoster: L10n.Reason.orderSendPoster
        case .orderProductsRefresh: L10n.Reason.orderProductsRefresh
        case .receiptSendClient: L10n.Reason.receiptSendClient
        case .orderUpdatePaymentType: L10n.Reason.orderUpdatePaymentType
        case .orderJoinToCourier: L10n.Reason.orderJoinToCourier
        case .orderListJoinToCourier: L10n.Reason.orderListJoinToCourier
        case .orderPaidByOperator: L10n.Reason.orderPaidByOperator
        case .orderUpdateAddressAndPaymentType: L10n.Reason.orderUpdateAddressAndPaymentType
        case .orderCommentUpdate: L10n.Reason.orderCommentUpdate
        case .courierOrderCommentUpdate: L10n.Reason.courierOrderCommentUpdate
        case .editPickUpOrderStatus: L10n.Reason.editPickUpOrderStatus
        case .allOrdersStatusChange: L10n.Reason.allOrdersStatusChange
        case .orderEditStatus: L10n.Reason.orderEditStatus
        case .orderEditDeliveryType: L10n.Reason.orderEditDeliveryType
        case .updateCourierStatus: L10n.Reason.updateCourierStatus
        case .feedbackToCourier: L10n.Reason.feedbackToCourier
        case .orderChangeServiceType: L10n.Reason.orderChangeServiceType
        case .changeAggregatorOrder: L10n.Reason.changeAggregatorOrder
        case .orderSetCollectorImage: L10n.Reason.orderSetCollectorImage
        case .orderSetOperator: L10n.Reason.orderSetOperator
        case .orderCollectorCourierPaid: L10n.Reason.orderCollectorCourierPaid
        case .smsGatewayCreate: L10n.Reason.smsGatewayCreate
        case .smsGatewayUpdate: L10n.Reason.smsGatewayUpdate
        case .smsGatewayTypeUpdate: L10n.Reason.smsGatewayTypeUpdate
        case .smsGatewaySelectedUpdate: L10n.Reason.smsGatewaySelectedUpdate
        case .smsGatewayDelete: L10n.Reason.smsGatewayDelete
        case .newsCreate: L10n.Reason.newsCreate
        case .newsUpdate: L10n.Reason.newsUpdate
        case .newsDelete: L10n.Reason.newsDelete
        case .sendTargetByPrice: L10n.Reason.sendTargetByPrice
        case .smsSendDriver: L10n.Reason.smsSendDriver
        case .smsSettingsCreate: L10n.Reason.smsSettingsCreate
        case .smsSend: L10n.Reason.smsSend
        case .storyInfoCreate: L10n.Reason.storyInfoCreate
        case .storyInfoUpdate: L10n.Reason.storyInfoUpdate
        case .storyInfoUpdatePriority: L10n.Reason.storyInfoUpdatePriority
        case .storyInfoDelete: L10n.Reason.storyInfoDelete
        case .storyCreate: L10n.Reason.storyCreate
        case .storyUpdate: L10n.Reason.storyUpdate
        case .storyUpdatePriority: L10n.Reason.storyUpdatePriority
        case .storyDelete: L10n.Reason.storyDelete
        case .driverSettingsUpdate: L10n.Reason.driverSettingsUpdate
        case .notificationUpdate: L10n.Reason.notificationUpdate
        case .notificationDelete: L10n.Reason.notificationDelete
        case .sendPaymentSettingsUpdate: L10n.Reason.sendPaymentSettingsUpdate
        case .bookingCreate: L10n.Reason.bookingCreate
        case .bookingUpdate: L10n.Reason.bookingUpdate
        case .bookingUpdateStatus: L10n.Reason.bookingUpdateStatus
        case .hallCreate: L10n.Reason.hallCreate
        case .hallUpdate: L10n.Reason.hallUpdate
        case .hallDelete: L10n.Reason.hallDelete
        case .dineOrderCreate: L10n.Reason.dineOrderCreate
        case .dineOrderUpdate: L10n.Reason.dineOrderUpdate
        case .dineOrderUpdateStatus: L10n.Reason.dineOrderUpdateStatus
        case .tableUpdate: L10n.Reason.tableUpdate
        case .tableCreate: L10n.Reason.tableCreate
        case .tableDelete: L10n.Reason.tableDelete
        case .expressBranchUpdate: L10n.Reason.expressBranchUpdate
        case .expressProductRefresh: L10n.Reason.expressProductRefresh
        case .eatsOrderDelete: L10n.Reason.eatsOrderDelete
        case .eatsOrderCreate: L10n.Reason.eatsOrderCreate
        case .eatsOrderUpdateStatus: L10n.Reason.eatsOrderUpdateStatus
        case .eatsSettingsUpdate: L10n.Reason.eatsSettingsUpdate
        case .callUpdate: L10n.Reason.callUpdate
        case .callUpdateType: L10n.Reason.callUpdateType
        case .callCreate: L10n.Reason.callCreate
        case .operatorPhoneCreate: L10n.Reason.operatorPhoneCreate
        case .operatorPhoneDelete: L10n.Reason.operatorPhoneDelete
        case .areaUpdate: L10n.Reason.areaUpdate
        case .areaDelete: L10n.Reason.areaDelete
        case .calculateDeliveryPriceByOperator: L10n.Reason.calculateDeliveryPriceByOperator
        case .courierTariffUpdate: L10n.Reason.courierTariffUpdate
        case .courierTariffCreate: L10n.Reason.courierTariffCreate
        case .deliveryPriceCalculateSettingUpdate: L10n.Reason.deliveryPriceCalculateSettingUpdate
        case .deliverySettingsUpdate: L10n.Reason.deliverySettingsUpdate
        case .deliveryTariffCreate: L10n.Reason.deliveryTariffCreate
        case .deliveryTariffUpdate: L10n.Reason.deliveryTariffUpdate
        case .deliveryTariffDelete: L10n.Reason.deliveryTariffDelete
        case .driverUpdateStatus: L10n.Reason.driverUpdateStatus
        case .driverSetBranchAndTariff: L10n.Reason.driverSetBranchAndTariff
        case .driverSetVehicle: L10n.Reason.driverSetVehicle
        case .findCourierSettingsUpdate: L10n.Reason.findCourierSettingsUpdate
        case .freeDeliveryUpdate: L10n.Reason.freeDeliveryUpdate
        case .freeDeliveryCreate: L10n.Reason.freeDeliveryCreate
        case .logistJoinBranch: L10n.Reason.logistJoinBranch
        case .deliveryMapSettingsUpdate: L10n.Reason.deliveryMapSettingsUpdate
        case .merchantDeliveryKeysCreate: L10n.Reason.merchantDeliveryKeysCreate
        case .merchantDeliveryKeysUpdate: L10n.Reason.merchantDeliveryKeysUpdate
        case .merchantDeliveryKeysDelete: L10n.Reason.merchantDeliveryKeysDelete
        case .merchantDeliveryKeysUpdateYandex: L10n.Reason.merchantDeliveryKeysUpdateYandex
        case .merchantDeliveryKeysUpdateActiveTypes: L10n.Reason.merchantDeliveryKeysUpdateActiveTypes
        case .millenniumSettingsUpdate: L10n.Reason.millenniumSettingsUpdate
        case .orderDeliveredByCourier: L10n.Reason.orderDeliveredByCourier
        case .ordersDeliveryOnWay: L10n.Reason.ordersDeliveryOnWay
        case .orderDeliveryReturned: L10n.Reason.orderDeliveryReturned
        case .millenniumCheckPricePreOrder: L10n.Reason.millenniumCheckPricePreOrder
        case .millenniumOrderCreate: L10n.Reason.millenniumOrderCreate
        case .millenniumOrderCanceled: L10n.Reason.millenniumOrderCanceled
        case .createTransactionByOperator: L10n.Reason.createTransactionByOperator
        case .transportCreate: L10n.Reason.transportCreate
        case .transportUpdate: L10n.Reason.transportUpdate
        case .transportDelete: L10n.Reason.transportDelete
        case .yandexCheckPricePreOrder: L10n.Reason.yandexCheckPricePreOrder
        case .yandexCreateOrderOperator: L10n.Reason.yandexCreateOrderOperator
        case .yandexManuallyCreate: L10n.Reason.yandexManuallyCreate
        case .yandexConfirmByOrderId: L10n.Reason.yandexConfirmByOrderId
        case .yandexConfirmByClaimId: L10n.Reason.yandexConfirmByClaimId
        case .yandexCancelInfoByOrderId: L10n.Reason.yandexCancelInfoByOrderId
        case .yandexCancelInfoByClaimId: L10n.Reason.yandexCancelInfoByClaimId
        case .yandexCancelByOrderId: L10n.Reason.yandexCancelByOrderId
        case .yandexCancelByClaimId: L10n.Reason.yandexCancelByClaimId
        case .yandexConfirmationCode: L10n.Reason.yandexConfirmationCode
        case .manuallyOrderUpdate: L10n.Reason.manuallyOrderUpdate
        case .yandexSearchOrder: L10n.Reason.yandexSearchOrder
        case .telegramSendMessage: L10n.Reason.telegramSendMessage
        case .telegramAssignUser: L10n.Reason.telegramAssignUser
        case .telegramCreateUser: L10n.Reason.telegramCreateUser
        case .telegramSearchUser: L10n.Reason.telegramSearchUser
        case .telegramSearchUserFromDb: L10n.Reason.telegramSearchUserFromDb
        case .telegramGetChatHistory: L10n.Reason.telegramGetChatHistory
        case .clientFeedbackSettingsUpdate: L10n.Reason.clientFeedbackSettingsUpdate
        }
    }
}

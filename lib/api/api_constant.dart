const String BASE_URL = "http://demo1.dishhome.com.np:81/v1";
//const String LOGIN = BASE_URL + "v1/auth/login";

const String REGISTER_USER = BASE_URL + "/auth/register";
const String LOGIN_USER = BASE_URL + "/auth/login";
const String LOGIN_USER_WITH_CID = BASE_URL + "/auth/login-with-otp";
const String OTPURL = BASE_URL + "/auth/verify-otp";
const String RESEND_OTP = BASE_URL + "/auth/resend-otp";
const String FORGETURL = BASE_URL + "/auth/forgot-password";
const String FORGETVERIFYOTP = BASE_URL + "/auth/forgot-password-verify-otp";
const String CHANGEPASSWORDURL = BASE_URL + "/auth/change-password";
const String USERBASEURL = BASE_URL + "/users/";
const String GET_COSTUMER_ID = USERBASEURL + "get-customer-id";
const String VERIFY_COSTUMER_ID = USERBASEURL + "verify-otp";
const String kycEditFormUrl = USERBASEURL + "update-kyc-info";
const String userProfileUpdate = USERBASEURL + "update-user-basic-info";
const String uploadCitizenshipUrl =
    USERBASEURL + "upload-document?name=Citizenship_front";
const String getProfileUrl = USERBASEURL + "profile";
const String imageBaseUrl = "http://demo1.dishhome.com.np:81/v1/file/";
const String UPLOADDOCUMENTURL = "http://demo1.dishhome.com.np:81/v1/users/upload-document?name=Citizenship_front";
const String GETDOCUMENTSURL = "http://demo1.dishhome.com.np:81/v1/users/profile";
const String deleteDocumentURL = BASE_URL+ "/users/delete-document";


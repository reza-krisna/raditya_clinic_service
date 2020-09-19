class User{

  /*
   * User's firebase authentication token.
   *
   * Map key->valueDataType : tokenId->String, refreshToken->String, expiredIn->dateTime
   */
  Map<String,dynamic> userToken;

  // Firebase User ID.
  String userId;

  // User's email address.
  String email;

  // If email is belong to this user.
  bool isRegistered;

  // User's phone number.
  String phoneNumber;

  // If user's email account is verified.
  bool emailVerified;

  // If user already onboarding
  bool onBoarded;

  /*
   * User's patient data.
   *
   * Map key->valueDataType : fullName->String, birth->Date, sex->String, address->String, bloodType->String, bodyWeight->Int, bodyHeight->Int
   */
  Map<String,dynamic> patientData;

  // Constructor
  User({
    this.userId,
    this.userToken,
    this.email,
    this.isRegistered,
    this.emailVerified,
    this.phoneNumber,
    this.patientData
  });
}
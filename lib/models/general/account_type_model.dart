class AccountTypeModel {
  int id;
  String type;
  String account;

  AccountTypeModel(
      {required this.id, required this.type, required this.account});
}

List<AccountTypeModel> accounts = [
  AccountTypeModel(
    id: 1,
    account: "Personal Account",
    type: "personal",
  ),
  AccountTypeModel(
    id: 2,
    account: "Business Account",
    type: "business",
  ),
  AccountTypeModel(
    id: 3,
    account: "Social Account",
    type: "social",
  ),
];

import 'package:geschool/features/common/data/models/basemodels/depense_model.dart';

class DepenseListResponseModel {
  String status;
  String message;
  int isAdmin;
  List<DenpensePerCentre> information;

  DepenseListResponseModel(
      {this.status, this.message, this.isAdmin, this.information});

  DepenseListResponseModel.fromJson(Map<String, dynamic> json) {
    this.status = json["status"];
    this.message = json["message"];
    this.isAdmin = json["is_admin"];
    this.information = json["information"] == null
        ? null
        : (json["information"] as List)
            .map((e) => DenpensePerCentre.fromJson(e))
            .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["status"] = this.status;
    data["message"] = this.message;
    data["is_admin"] = this.isAdmin;
    if (this.information != null)
      data["information"] = this.information.map((e) => e.toJson()).toList();
    return data;
  }
}

class DenpensePerCentre {
  String keyCenter;
  String centreName;
  int budgetRecu;
  int totalDepense;
  int budgetPrevision;
  int budgetPlafond;
  int budgetDepense;
  DenpenseCentreDatas datas;

  DenpensePerCentre({
    this.keyCenter,
    this.centreName,
    this.budgetRecu,
    this.totalDepense,
    this.budgetPrevision,
    this.budgetPlafond,
    this.budgetDepense,
    this.datas,
  });

  DenpensePerCentre.fromJson(Map<String, dynamic> json) {
    this.keyCenter = json["key_center"];
    this.centreName = json["centre_name"];
    this.budgetRecu = json["budget_recu"];
    this.totalDepense = json["total_depense"];
    this.budgetPrevision = json["budget_prevision"];
    this.budgetPlafond = json["budget_plafond"];
    this.budgetDepense = json["budget_depense"];
    this.datas = json["datas"] == null
        ? null
        : DenpenseCentreDatas.fromJson(json["datas"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["key_center"] = this.keyCenter;
    data["centre_name"] = this.centreName;
    data["budget_recu"] = this.budgetRecu;
    data["total_depense"] = this.totalDepense;
    data["budget_prevision"] = this.budgetPrevision;
    data["budget_plafond"] = this.budgetPlafond;
    data["budget_depense"] = this.budgetDepense;
    if (this.datas != null) data["datas"] = this.datas.toJson();
    return data;
  }
}

class DenpenseCentreDatas {
  List<Sections> sections;
  List<AllPersonnels> allPersonnels;
  List<DepenseModel> data1;
  List<DepenseModel> data2;
  List<DepenseModel> data3;

  DenpenseCentreDatas({
    this.sections,
    this.allPersonnels,
    this.data1,
    this.data2,
    this.data3,
  });

  DenpenseCentreDatas.fromJson(Map<String, dynamic> json) {
    this.sections = json["sections"] == null
        ? null
        : (json["sections"] as List).map((e) => Sections.fromJson(e)).toList();
    this.allPersonnels = json["all_personnels"] == null
        ? null
        : (json["all_personnels"] as List)
            .map((e) => AllPersonnels.fromJson(e))
            .toList();
    this.data1 = json["data1"] == null
        ? null
        : (json["data1"] as List).map((e) => DepenseModel.fromJson(e)).toList();
    this.data2 = json["data2"] == null
        ? null
        : (json["data2"] as List).map((e) => DepenseModel.fromJson(e)).toList();
    this.data3 = json["data3"] == null
        ? null
        : (json["data3"] as List).map((e) => DepenseModel.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sections != null)
      data["sections"] = this.sections.map((e) => e.toJson()).toList();
    if (this.allPersonnels != null)
      data["all_personnels"] =
          this.allPersonnels.map((e) => e.toJson()).toList();
    if (this.data1 != null)
      data["data1"] = this.data1.map((e) => e.toJson()).toList();
    if (this.data2 != null)
      data["data2"] = this.data2.map((e) => e.toJson()).toList();
    if (this.data3 != null)
      data["data3"] = this.data3.map((e) => e.toJson()).toList();
    return data;
  }
}

class AllPersonnels {
  String id;
  String idP;
  String idCenter;
  String typeUser;
  String defaultCenter;
  String nom;
  String prenoms;
  String photo;
  String username;
  String authKey;
  String passwordHash;
  dynamic passwordResetToken;
  String email;
  dynamic datenaissance;
  String telephoneuser;
  dynamic adresseuser;
  String role;
  String status;
  String createdAt;
  String updatedAt;
  dynamic createBy;
  dynamic updateBy;
  dynamic registrationId;
  String keypersonnel;

  AllPersonnels({
    this.id,
    this.idP,
    this.idCenter,
    this.typeUser,
    this.defaultCenter,
    this.nom,
    this.prenoms,
    this.photo,
    this.username,
    this.authKey,
    this.passwordHash,
    this.passwordResetToken,
    this.email,
    this.datenaissance,
    this.telephoneuser,
    this.adresseuser,
    this.role,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.createBy,
    this.updateBy,
    this.registrationId,
    this.keypersonnel,
  });

  AllPersonnels.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.idP = json["idP"];
    this.idCenter = json["id_center"];
    this.typeUser = json["type_user"];
    this.defaultCenter = json["default_center"];
    this.nom = json["nom"];
    this.prenoms = json["prenoms"];
    this.photo = json["photo"];
    this.username = json["username"];
    this.authKey = json["auth_key"];
    this.passwordHash = json["password_hash"];
    this.passwordResetToken = json["password_reset_token"];
    this.email = json["email"];
    this.datenaissance = json["datenaissance"];
    this.telephoneuser = json["telephoneuser"];
    this.adresseuser = json["adresseuser"];
    this.role = json["role"];
    this.status = json["status"];
    this.createdAt = json["created_at"];
    this.updatedAt = json["updated_at"];
    this.createBy = json["create_by"];
    this.updateBy = json["update_by"];
    this.registrationId = json["registration_id"];
    this.keypersonnel = json["keypersonnel"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["idP"] = this.idP;
    data["id_center"] = this.idCenter;
    data["type_user"] = this.typeUser;
    data["default_center"] = this.defaultCenter;
    data["nom"] = this.nom;
    data["prenoms"] = this.prenoms;
    data["photo"] = this.photo;
    data["username"] = this.username;
    data["auth_key"] = this.authKey;
    data["password_hash"] = this.passwordHash;
    data["password_reset_token"] = this.passwordResetToken;
    data["email"] = this.email;
    data["datenaissance"] = this.datenaissance;
    data["telephoneuser"] = this.telephoneuser;
    data["adresseuser"] = this.adresseuser;
    data["role"] = this.role;
    data["status"] = this.status;
    data["created_at"] = this.createdAt;
    data["updated_at"] = this.updatedAt;
    data["create_by"] = this.createBy;
    data["update_by"] = this.updateBy;
    data["registration_id"] = this.registrationId;
    data["keypersonnel"] = this.keypersonnel;
    return data;
  }
}

class Sections {
  String keysection;
  String designation;
  int sbudgetDepense;
  int sbudgetPlafond;
  int sbudgetPrevision;

  Sections({
    this.keysection,
    this.designation,
    this.sbudgetDepense,
    this.sbudgetPlafond,
    this.sbudgetPrevision,
  });

  Sections.fromJson(Map<String, dynamic> json) {
    this.keysection = json["keysection"];
    this.designation = json["designation"];
    this.sbudgetDepense = json["sbudget_depense"];
    this.sbudgetPlafond = json["sbudget_plafond"];
    this.sbudgetPrevision = json["sbudget_prevision"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["keysection"] = this.keysection;
    data["designation"] = this.designation;
    data["sbudget_depense"] = this.sbudgetDepense;
    data["sbudget_plafond"] = this.sbudgetPlafond;
    data["sbudget_prevision"] = this.sbudgetPrevision;
    return data;
  }
}

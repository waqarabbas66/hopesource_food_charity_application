import 'dart:convert';

class Counts{
  int? fulfilledRequests,fulfilledDonations,pendingDonations,pendingRequests,numberOfDonors,numberOfReceivers,pricedDonations;

  Counts({
    this.fulfilledRequests,
    this.fulfilledDonations,
    this.pendingDonations,
    this.pendingRequests,
    this.numberOfDonors,
    this.numberOfReceivers,
    this.pricedDonations
  });
  static Counts countsFromJson(String str) => Counts.fromJson(json.decode(str));

  factory Counts.fromJson(Map<String, dynamic> json) => Counts(
      fulfilledRequests: json["fulfilledRequests"],
      fulfilledDonations: json["fulfilledDonations"],
      pendingDonations: json["pendingDonations"],
      pendingRequests: json["pendingRequests"],
      numberOfDonors: json["numberOfDonors"],
      numberOfReceivers: json["numberOfReceivers"],
    pricedDonations: json["pricedDonations"]
  );
}
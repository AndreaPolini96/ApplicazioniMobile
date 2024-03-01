class Ip{
  String ip;
  String city;
  String region;
  String postal;

  Ip({required this.ip, required this.city, required this.region, required this.postal});

  @override
  String toString() {
    return "My ip is $ip, city $city, region $region, CAP $postal";
  }
}
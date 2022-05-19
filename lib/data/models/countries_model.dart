class Countries {
  final String? id;
  final String? country;
  final String? countryCode;
  final String? slug;
  final int? newConfirmed;
  final int? totalConfirmed;
  final int? newDeaths;
  final int? totalDeaths;
  final int? newRecovered;
  final int? totalRecovered;
  final String? date;

  Countries(
      {this.id,
        this.country,
        this.countryCode,
        this.slug,
        this.newConfirmed,
        this.totalConfirmed,
        this.newDeaths,
        this.totalDeaths,
        this.newRecovered,
        this.totalRecovered,
        this.date});

  factory Countries.fromJson(dynamic json) {
    return Countries(
      id: json['ID'],
      country: json['Country'],
      countryCode: json['CountryCode'],
      slug: json['Slug'],
      newConfirmed: json['NewConfirmed'],
      totalConfirmed: json['TotalConfirmed'],
      newDeaths: json['NewDeaths'],
      totalDeaths: json['TotalDeaths'],
      newRecovered: json['NewRecovered'],
      totalRecovered: json['TotalRecovered'],
      date: json['Date'],
    );
  }
}

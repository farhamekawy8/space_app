import 'package:space_assignment/core/app_images.dart';

class PlanetInfo {
  String name;
  String image;
  String title;
  String about;
  String distanceFromSun;
  String lengthOfDay;
  String orbitalPeriod;
  String radius;
  String mass;
  String gravity;
  String surfaceArea;

  PlanetInfo(
      this.name,
      this.image,
      this.title,
      this.about,
      this.distanceFromSun,
      this.lengthOfDay,
      this.orbitalPeriod,
      this.radius,
      this.mass,
      this.gravity,
      this.surfaceArea);

  static List<PlanetInfo> planets = [

  PlanetInfo(
      'Sun',
      AppImages.sunImage,
      'The Sun: Our Solar System Star',
      'The Sun is the heart of our solar system,'
          ' a massive ball of plasma that provides '
          'heat, light, and energy to everything'
          ' within its gravitational pull.'
          ' Its immense size and temperature'
          ' are fueled by nuclear fusion,'
          ' a process that combines hydrogen '
          'atoms into helium, releasing vast'
          ' amounts of energy. The Suns '
          'magnetic field, which is constantly'
          ' changing, influences solar activity '
          'like sunspots and solar flares,'
          ' affecting space weather and potentially'
          ' disrupting Earth-based technologies.',
      '0',
      '0',
      '0',
      '695700',
      '1.989 × 10³⁰',
      '274',
      '6.09 × 10¹²'
  ),
  PlanetInfo(
      'Mercury',
      AppImages.mercuryImage,
      'Mercury: The Closest Planet',
      'The Sun is the heart of our solar system,'
          ' a massive ball of plasma that provides '
          'heat, light, and energy to everything'
          ' within its gravitational pull. '
          'Its immense size and temperature are'
          ' fueled by nuclear fusion, a process'
          ' that combines hydrogen atoms into'
          ' helium, releasing vast amounts of'
          ' energy. The Suns '
          'magnetic field, which is constantly '
          'changing, influences solar activity'
          ' like sunspots and solar flares,'
          ' affecting space weather and potentially'
          ' disrupting Earth-based technologies.',
      '57909227',
      '1407.6',
      '0.24',
      '2439.7',
      '3.301 × 10²³',
      '3.7',
      '7.48 × 10⁷'
  ),
  PlanetInfo(
      'Venus',
      AppImages.venusImage,
      'Venus: Earths Toxic Twin',
      'Venus is often referred to as Earths '
          'twin due to its similar size and'
          ' composition. However, its thick '
          'atmosphere, composed primarily of'
          ' carbon dioxide, traps heat, making it'
          ' the hottest planet in our solar system.'
          ' This greenhouse effect has created a '
          'hostile environment with temperatures '
          'hot enough to melt lead. Venus is also'
          ' shrouded in a thick layer of sulfuric'
          ' acid clouds, which reflect sunlight'
          ' and give it a yellowish appearance.',
      '108209072',
      '5832.2',
      '0.62',
      '6051.8',
      '4.867 × 10²⁴',
      '8.87',
      '4.60 × 10⁸'
  ),
  PlanetInfo(
      'Earth',
      AppImages.earthImage,
      'Earth: Our Blue Marble',
      'Earth is the only known planet in the '
          'universe that supports life.'
          ' Its unique combination of factors, '
          'including liquid water, a breathable'
          ' atmosphere, and a suitable distance'
          ' from the Sun, has created the ideal '
          'conditions for the development of'
          ' complex organisms. Earths '
          'magnetic field protects it from '
          'harmful solar radiation, and its'
          ' atmosphere helps to regulate '
          'temperature and weather patterns.',
      '149598026',
      '23.93',
      '1',
      '6371',
      '5.972 × 10²⁴',
      '9.81',
      '5.10 × 10⁸'
  ),
    PlanetInfo(
      'Mars',
      AppImages.marsImage,
      'Mars: The Red Planet',
      'Mars, often called the Red Planet due '
          'to its reddish hue caused by iron oxide,'
          ' is a cold, rocky world with a thin'
          ' atmosphere. It has polar ice caps,'
          ' ancient riverbeds, and evidence of '
          'past volcanic activity, suggesting'
          ' that it once had a warmer, wetter'
          ' climate. Mars is a prime target for'
          ' exploration due to its potential'
          ' for past or present life, and '
          'NASAs Perseverance rover is currently '
          'searching for signs of ancient microbial'
          ' life on the planets surface.',
      '227943824',
      '24.62',
      '1.88',
      '3389.5',
      '6.39 × 10²³',
      '3.71',
      '1.45 × 10⁸'
  ),
    PlanetInfo(
      'Jupiter',
      AppImages.jupiterImage,
      'Jupiter: The Gas Giant',
      'Jupiter is the largest planet in our '
          'solar system, a gas giant composed'
          ' primarily of hydrogen and helium.'
          ' Its Great Red Spot, a massive storm '
          'that has been raging for centuries, '
          'is a testament to its turbulent'
          ' atmosphere. Jupiter has a strong'
          ' magnetic field and numerous moons,'
          ' including Europa, which is believed'
          ' to have a subsurface ocean that could'
          ' potentially harbor life.',
      '778547669',
      '9.92',
      '11.86',
      '69911',
      '1.898 × 10²⁷',
      '24.79',
      '6.21 × 10¹⁵'
  ),
    PlanetInfo(
      'Saturn',
      AppImages.saturnImage,
      'Saturn: The Ringed Planet',
      'Saturn is best known for its spectacular'
          ' rings, which are composed of countless'
          ' ice particles and rocks. It is a gas'
          ' giant with a composition similar to'
          ' Jupiter, but its rings and moons give '
          'it a distinct appearance.'
          ' Saturns largest moon, Titan,'
          ' has a thick atmosphere and is the only'
          ' known celestial body outside of Earth'
          ' with liquid lakes and rivers.',
      '1426666422',
      '10.66',
      '29.46',
      '58232',
      '5.683 × 10²⁶',
      '10.44',
      '4.27 × 10¹⁵'
  ),
    PlanetInfo(
      'Uranus',
      AppImages.uranusImage,
      'Uranus: The Tilted Planet',
      'Uranus is an ice giant with a unique axial'
          ' tilt, causing its seasons to be'
          ' extreme. It is surrounded by faint'
          ' rings and has numerous moons,'
          ' including Miranda, known for its'
          ' chaotic terrain. Uranus atmosphere'
          ' is composed primarily of hydrogen,'
          ' helium, and methane, giving it a pale '
          'blue color.',
      '2870990000',
      '17.24',
      '84.01',
      '25362',
      '8.681 × 10²⁵',
      '8.69',
      '8.1 × 10¹⁵'
  ),
    PlanetInfo(
      'Neptune',
      AppImages.neptuneImage,
      'Neptune: The Distant World',
      'Neptune is the farthest planet from the Sun'
          ' and is another ice giant. Its atmosphere'
          ' is similar to Uranus, but it is a deeper'
          ' blue color due to the presence of methane.'
          ' Neptune has several moons, including Triton,'
          ' which orbits the planet in a retrograde'
          ' direction and is believed to be a captured'
          ' Kuiper Belt object.',
      '4498252900',
      '16.11',
      '164.8',
      '24622',
      '1.024 × 10²⁶',
      '11.15',
      '7.65 × 10¹⁵'
  ),




  ];
}
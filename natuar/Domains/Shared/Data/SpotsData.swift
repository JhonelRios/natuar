//
//  SpotsData.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 6/09/24.
//

import Foundation

let spotsData: [Spot] = [
    Spot(
        id: 4,
        name: "Parque Nacional del Manu",
        description: "Ubicado en la provincia de Manu, Madre de Dios, el parque es uno de los parques nacionales más grandes de Perú, hogar de diversas especies endémicas y amenazadas. Es un sitio clave para la conservación y estudio de la Amazonía.",
        latitude: -12,
        longitude: -71,
        picture: "manu_national_park-image-1",
        images: ["manu_national_park"]
    ),
    Spot(
        id: 1,
        name: "Machu Picchu",
        description: "Situado en el distrito de Machupicchu en la provincia de La Convención, es una antigua ciudadela inca ubicada en las montañas de los Andes en Perú. Es uno de los sitios arqueológicos más famosos del mundo y un símbolo de la civilización inca.",
        latitude: -13.163068,
        longitude: -72.545128,
        picture: "machu_picchu-image-1",
        images: [
            "machu_picchu-image-2",
            "machu_picchu-image-3",
        ]
    ),
    Spot(
        id: 2,
        name: "Selva Central",
        description: "Localizada en la provincia de Chanchamayo, Junín, esta área es conocida por su densa vegetación tropical y biodiversidad. Es un destino popular para el ecoturismo y aventuras en la selva.",
        latitude: -11.12,
        longitude: -75.35,
        picture: "central_jungle-image-1",
        images: [
            "central_jungle-image-2",
            "central_jungle-image-3"
        ]
    ),
    Spot(
        id: 3,
        name: "Reserva Nacional Tambopata",
        description: "Esta reserva está situada en la provincia de Tambopata, Madre de Dios, y es reconocida por su rica biodiversidad y extensos bosques tropicales. Es un punto de interés para la observación de aves y fauna silvestre.",
        latitude: -12.83,
        longitude: -69.183333,
        picture: "tambopata_national_reserve-image-1",
        images: [
            "tambopata_national_reserve-image-3",
            "tambopata_national_reserve-image-4",
        ]
    ),
    Spot(
        id: 11,
        name: "Reserva Nacional Paracas",
        description: "Situada en Pisco, Ica, esta reserva protege una diversidad de especies marinas y es famosa por sus formaciones rocosas costeras y las Islas Ballestas.",
        latitude: -13.834722,
        longitude: -76.248333,
        picture: "paracas_national_reserve-image-1",
        images: [
            "paracas_national_reserve-image-2",
            "paracas_national_reserve-image-3"
        ]
    ),
    Spot(
        id: 5,
        name: "Valle Sagrado",
        description: "En la provincia de Paucartambo, Cusco, el Valle Sagrado de los Incas es una región rica en sitios arqueológicos, incluyendo Ollantaytambo y Pisac, famosa por sus paisajes andinos y su significado histórico.",
        latitude: -13.332778,
        longitude: -72.084444,
        picture: "sacred_valley-image-1",
        images: [
            "sacred_valley-image-3",
        ]
    ),
    Spot(
        id: 6,
        name: "Catarata Gocta",
        description: "Situada en la provincia de Utcubamba, Amazonas, la Catarata Gocta es una de las cascadas más altas del mundo, conocida por su impresionante caída de agua en medio de la selva amazónica.",
        latitude: -6.007778,
        longitude: -77.865833,
        picture: "gocta_waterfall-image-1",
        images: [
            "gocta_waterfall-image-2",
            "gocta_waterfall-image-3"
        ]
    ),
    Spot(
        id: 7,
        name: "Sillustani",
        description: "Ubicado cerca de la ciudad de Puno, en la provincia de El Collao, Sillustani es un antiguo cementerio preincaico conocido por sus chullpas, torres funerarias circulares construidas en piedra.",
        latitude: -15.723056,
        longitude: -70.158889,
        picture: "sillustani-image-1",
        images: [
            "sillustani-image-2",
            "sillustani-image-3",
            "sillustani-image-4"
        ]
    ),
    Spot(
        id: 8,
        name: "Valle del Colca",
        description: "Localizado en la provincia de Caylloma, Arequipa, el Valle del Colca es famoso por su profundo cañón, pintorescos pueblos coloniales y la presencia del majestuoso cóndor andino.",
        latitude: -15.609329,
        longitude: -71.857766,
        picture: "colca_valley-image-1",
        images: [
            "colca_valley-image-2",
            "colca_valley-image-3",
            "colca_valley-image-4"
        ]
    ),
    Spot(
        id: 9,
        name: "Reserva Nacional Pacaya Samiria",
        description: "En la provincia de Requena, Loreto, esta reserva es conocida como el \"espejo de agua\" por sus bosques inundados y es un destino crucial para la observación de la biodiversidad amazónica.",
        latitude: -5.5,
        longitude: -74,
        picture: "pacaya_samiria_national_reserve-image-1",
        images: [
            "pacaya_samiria_national_reserve-image-2",
            "pacaya_samiria_national_reserve-image-3",
            "pacaya_samiria_national_reserve-image-4"
        ]
    ),
    Spot(
        id: 10,
        name: "Parque Nacional Cordillera Azul",
        description: "Localizado en Coronel Portillo, Ucayali, este parque nacional destaca por sus montañas cubiertas de bosques vírgenes y su gran diversidad de especies endémicas.",
        latitude: -8.25,
        longitude: -75.5,
        picture: "cordillera_azul_national_park-image-1",
        images: [
            "cordillera_azul_national_park-image-2",
            "cordillera_azul_national_park-image-3"
        ]
    ),
    Spot(
        id: 12,
        name: "Selva Alta",
        description: "En Moyobamba, San Martín, la Selva Alta es conocida por su clima templado y biodiversidad, ideal para el cultivo de orquídeas y la observación de aves.",
        latitude: -6.033333,
        longitude: -76.966667,
        picture: "high_jungle-image-1",
        images: [
            "high_jungle-image-2",
            "high_jungle-image-3"
        ]
    ),
    Spot(
        id: 13,
        name: "Selva Baja",
        description: "En la provincia de Bagua, Amazonas, la Selva Baja se caracteriza por su clima cálido y húmedo, siendo un hábitat rico en flora y fauna amazónica.",
        latitude: -5.65,
        longitude: -78.45,
        picture: "low_jungle-image-1",
        images: [
            "low_jungle-image-2",
            "low_jungle-image-3"
        ]
    ),
    Spot(
        id: 14,
        name: "Lago Titicaca",
        description: "Ubicado en Puno, el Lago Titicaca es el lago navegable más alto del mundo y es un lugar central en la mitología andina, compartido entre Perú y Bolivia.",
        latitude: -15.925,
        longitude: -69.335,
        picture: "lake_titicaca-image-1",
        images: [
            "lake_titicaca-image-2",
            "lake_titicaca-image-3"
        ]
    ),
    Spot(
        id: 15,
        name: "Playas de Tumbes",
        description: "En la provincia de Zarumilla, Tumbes, estas playas son famosas por sus aguas cálidas y biodiversidad marina, incluyendo santuarios de aves y áreas protegidas.",
        latitude: -3.566944,
        longitude: -80.451389,
        picture: "tumbes_beaches-image-2",
        images: [
            "tumbes_beaches-image-3",
        ]
    ),
    Spot(
        id: 16,
        name: "Cordillera Blanca",
        description: "Ubicada en Huaraz, Ancash, la Cordillera Blanca es la cadena montañosa tropical más alta del mundo y un destino popular para el alpinismo y el ecoturismo.",
        latitude: -9,
        longitude: -77,
        picture: "white_mountain_range-image-2",
        images: [
            "white_mountain_range-image-3",
            "white_mountain_range-image-4",
        ]
    ),
    Spot(
        id: 17,
        name: "Reserva Nacional Lomas de Lachay",
        description: "Situada en Huaral, Lima, esta reserva protege un ecosistema de lomas costeras que florecen en la temporada de nieblas, creando un oasis de biodiversidad en el desierto.",
        latitude: -11.35,
        longitude: -77.3,
        picture: "lomas_de_lachay_national_reserve-image-1",
        images: [
            "lomas_de_lachay_national_reserve-image-2",
            "lomas_de_lachay_national_reserve-image-3",
            "lomas_de_lachay_national_reserve-image-4"
        ]
    ),
    Spot(
        id: 18,
        name: "Zona Reservada Pantanos de Villa",
        description: "Localizada en Cañete, Lima, esta área protegida es vital para la conservación de aves migratorias y residentes en la costa central de Perú.",
        latitude: -12.217778,
        longitude: -76.9375,
        picture: "villa_swamp_reserved_zone-image-1",
        images: [
            "villa_swamp_reserved_zone-image-2",
            "villa_swamp_reserved_zone-image-3"
        ]
    )
]

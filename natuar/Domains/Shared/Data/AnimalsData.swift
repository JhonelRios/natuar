//
//  AnimalsData.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 2/09/24.
//

import Foundation

let animalsData: [Animal] = [
    Animal(
        id: 10,
        name: "Guacamayo Rojo",
        scientific_name: "Ara macao",
        description: "Un ave vibrante y colorida de la familia de los loros, conocida por su plumaje rojo brillante y su fuerte vínculo de pareja.",
        weigth: 1,
        height: 85,
        average_age: 50,
        habitat: "Bosques tropicales y subtropicales de América Central y del Sur.",
        diet: "Frugívoro, alimentándose de frutas, nueces, semillas y flores.",
        gestation: "28 días de incubación, con 2 a 4 huevos por nidada.",
        in_danger: false,
        images: [
            "red_macaw-image-1",
            "red_macaw-image-2",
            "red_macaw-image-3"
        ],
        model_name: "red_macaw",
        latitude: -12.83,
        longitude: -69.183333,
        spotId: 3
    ),
    Animal(
        id: 21,
        name: "Tucán Andino",
        scientific_name: "Ramphastos toco",
        description: "Un ave reconocible por su gran pico colorido, encontrada en los bosques tropicales de América del Sur.",
        weigth: 1,
        height: 60,
        average_age: 20,
        habitat: "Bosques tropicales y subtropicales de América del Sur.",
        diet: "Frugívoro, alimentándose de frutas, insectos, pequeños reptiles y aves.",
        gestation: "Incubación de 16 a 18 días, con 2 a 4 huevos por nidada.",
        in_danger: false,
        images: [
            "andean_toucan-image-1",
            "andean_toucan-image-2",
            "andean_toucan-image-3"
        ],
        model_name: "andean_toucan",
        latitude: -5.65,
        longitude: -78.45,
        spotId: 13
    ),
    Animal(
        id: 28,
        name: "Alpaca",
        scientific_name: "Vicugna pacos",
        description: "Un miembro domesticado de la familia de los camélidos de América del Sur, conocido por su lana fina y densa.",
        weigth: 65,
        height: 99,
        average_age: 20,
        habitat: "Criado originalmente en las alturas andinas de Perú, Bolivia, Ecuador y norte de Chile.",
        diet: "Herbívoro, consume principalmente hierba, heno y silaje.",
        gestation: "Aproximadamente 342 días, normalmente dando a luz a una cría.",
        in_danger: false,
        images: [
            "alpaca-image-1",
            "alpaca-image-2",
            "alpaca-image-3"
        ],
        model_name: "alpaca",
        latitude: -15.925,
        longitude: -69.335,
        spotId: 14
    ),
    Animal(
        id: 31,
        name: "Rana Gigante del Titicaca",
        scientific_name: "Telmatobius culeus",
        description: "Una rana única del Lago Titicaca, conocida por su tamaño excepcional y actualmente en peligro de extinción.",
        weigth: 1,
        height: 50,
        average_age: 15,
        habitat: "Exclusivamente en el Lago Titicaca, vive tanto en aguas poco profundas como en áreas más profundas cerca de la orilla.",
        diet: "Carnívoro, se alimenta de peces pequeños, insectos acuáticos y otros invertebrados.",
        gestation: "Pone hasta 500 huevos en una temporada de cría.",
        in_danger: true,
        images: [
            "giant_frog-image-1",
            "giant_frog-image-2",
            "giant_frog-image-3"
        ],
        model_name: "giant_frog",
        latitude: -15.92,
        longitude: -69.34,
        spotId: 14
    ),
    Animal(
        id: 11,
        name: "Sajino",
        scientific_name: "Pecari tajacu",
        description: "Un tipo de cerdo salvaje de la Amazonía, reconocido por su pelaje oscuro y su comportamiento en manadas.",
        weigth: 20,
        height: 50,
        average_age: 13,
        habitat: "Selvas tropicales y subtropicales de América del Sur y Central.",
        diet: "Omnívoro, alimentándose de frutas, raíces, insectos y pequeños vertebrados.",
        gestation: "145 días, con camadas de 2 a 4 crías.",
        in_danger: false,
        images: [
            "sajino-image-1",
            "sajino-image-2",
            "sajino-image-3"
        ],
        model_name: "sajino",
        latitude: -12.217778,
        longitude: -76.9375,
        spotId: 18
    ),
    Animal(
        id: 33,
        name: "Venado Rojo",
        scientific_name: "Cervus elaphus",
        description: "Un cérvido que se encuentra en los bosques y praderas alrededor de la Reserva Nacional Tambopata, apreciado por su belleza y agilidad.",
        weigth: 240,
        height: 130,
        average_age: 20,
        habitat: "Bosques templados, campo y praderas de alta montaña.",
        diet: "Herbívoro, se alimenta de una variedad de vegetación como hierbas, brotes, hojas, y frutos.",
        gestation: "Gestación de aproximadamente 240 días, con un parto de 1-2 crías.",
        in_danger: false,
        images: [
            "red_deer-image-1",
            "red_deer-image-2"
        ],
        model_name: "red_deer",
        latitude: -12.84,
        longitude: -69.19,
        spotId: 3
    ),
    Animal(
        id: 35,
        name: "Venado de Cola Blanca",
        scientific_name: "Odocoileus virginianus",
        description: "Común en los bosques de América del Norte y del Sur, este venado es apreciado por su elegancia y velocidad.",
        weigth: 68,
        height: 90,
        average_age: 10,
        habitat: "Bosques, campos, pastizales y zonas suburbanas, desde el sur de Canadá hasta Perú y Bolivia.",
        diet: "Herbívoro, se alimenta de hojas, frutos, nueces y flores.",
        gestation: "Gestación de aproximadamente 200 días, usualmente dando a luz a uno o dos cervatillos.",
        in_danger: false,
        images: [
            "white_deer-image-2",
            "white_deer-image-3"
        ],
        model_name: "white_deer",
        latitude: -11.35,
        longitude: -77.3,
        spotId: 17
    ),
    Animal(
        id: 8,
        name: "Vicuña",
        scientific_name: "Vicugna vicugna",
        description: "Un camélido andino, pariente cercano de la llama y la alpaca, valorado por su lana fina y suave.",
        weigth: 50,
        height: 90,
        average_age: 20,
        habitat: "Altiplano andino, a altitudes entre 3,200 y 4,800 metros.",
        diet: "Herbívoro, alimentándose de pastos de alta montaña.",
        gestation: "11 meses, con una sola cría por camada.",
        in_danger: false,
        images: [
            "vicuna-image-2"
        ],
        model_name: "vicuna",
        latitude: -15.723056,
        longitude: -70.158889,
        spotId: 7
    ),
    Animal(
        id: 13,
        name: "Tortuga Charapa",
        scientific_name: "Podocnemis expansa",
        description: "Una tortuga de río grande, conocida por su caparazón duro y su dieta omnívora.",
        weigth: 60,
        height: 50,
        average_age: 50,
        habitat: "Ríos y lagos de la cuenca amazónica.",
        diet: "Omnívora, alimentándose de frutas, plantas acuáticas, peces y pequeños invertebrados.",
        gestation: "Incubación de 90 a 100 días.",
        in_danger: true,
        images: [
            "charapa_turtle-image-1",
            "charapa_turtle-image-2",
            "charapa_turtle-image-3"
        ],
        model_name: "charapa_turtle",
        latitude: -5.66,
        longitude: -78.46,
        spotId: 13
    ),
    Animal(
        id: 4,
        name: "Lobo de Río",
        scientific_name: "Pteronura brasiliensis",
        description: "Una nutria grande que habita en los ríos de la Amazonía, conocida por su comportamiento juguetón y habilidades de natación.",
        weigth: 32,
        height: 60,
        average_age: 12,
        habitat: "Ríos y arroyos de la cuenca del Amazonas.",
        diet: "Carnívoro, principalmente peces, pero también crustáceos y pequeños mamíferos.",
        gestation: "65 a 70 días, con camadas de 1 a 5 crías.",
        in_danger: true,
        images: [
            "river_wolf-image-1",
            "river_wolf-image-2",
            "river_wolf-image-3"
        ],
        model_name: "river_wolf",
        latitude: -12.82,
        longitude: -69.18,
        spotId: 3
    ),
    Animal(
        id: 5,
        name: "Jaguar",
        scientific_name: "Panthera onca",
        description: "Un gran felino depredador, top en la cadena alimenticia del Amazonas, con un pelaje distintivamente manchado.",
        weigth: 90,
        height: 75,
        average_age: 12,
        habitat: "Bosques tropicales y subtropicales, pantanos y áreas boscosas de América del Sur y Central.",
        diet: "Carnívoro, cazando principalmente mamíferos medianos y grandes, como ciervos y pecaríes, pero también aves, reptiles y peces.",
        gestation: "93 a 105 días, con camadas de 1 a 4 crías.",
        in_danger: true,
        images: [
            "jaguar-image-1",
            "jaguar-image-2",
            "jaguar-image-3"
        ],
        model_name: "jaguar",
        latitude: -12,
        longitude: -71,
        spotId: 4
    ),
    Animal(
        id: 14,
        name: "Caimán Negro",
        scientific_name: "Melanosuchus niger",
        description: "Un caimán de gran tamaño, temido por su fuerza y posición en la cima de la cadena alimenticia del Amazonas.",
        weigth: 350,
        height: 400,
        average_age: 70,
        habitat: "Ríos y lagos de la cuenca amazónica.",
        diet: "Carnívoro, alimentándose de peces, mamíferos, aves y reptiles.",
        gestation: "Incubación de 90 a 100 días.",
        in_danger: false,
        images: [
            "black_caiman-image-1",
            "black_caiman-image-2",
            "black_caiman-image-3"
        ],
        model_name: "black_caiman",
        latitude: -5.5,
        longitude: -74,
        spotId: 9
    ),
    Animal(
        id: 7,
        name: "Mono Choro de Cola Amarilla",
        scientific_name: "Lagothrix flavicauda",
        description: "Una especie de primate endémico del norte de Perú, notable por su larga cola y hábitos arbóreos.",
        weigth: 7,
        height: 54,
        average_age: 20,
        habitat: "Bosques montanos de la Amazonía peruana.",
        diet: "Frugívoro y folívoro, alimentándose principalmente de frutas y hojas.",
        gestation: "225 días, con una sola cría por camada.",
        in_danger: true,
        images: [
            "yellow_monkey-image-1",
            "yellow_monkey-image-2",
            "yellow_monkey-image-3"
        ],
        model_name: "yellow_monkey",
        latitude: -6.007778,
        longitude: -77.865833,
        spotId: 6
    ),
    Animal(
        id: 9,
        name: "Puma",
        scientific_name: "Puma concolor",
        description: "Un felino grande y solitario que se encuentra en diversos hábitats en América, desde montañas hasta selvas.",
        weigth: 70,
        height: 70,
        average_age: 12,
        habitat: "Diversos hábitats, incluyendo bosques, montañas, desiertos y zonas costeras.",
        diet: "Carnívoro, cazando principalmente mamíferos como ciervos, pero también roedores y aves.",
        gestation: "91 días, con camadas de 1 a 6 crías.",
        in_danger: false,
        images: [
            "puma-image-1",
            "puma-image-2",
            "puma-image-3"
        ],
        model_name: "puma",
        latitude: -15.609329,
        longitude: -71.857766,
        spotId: 8
    ),
    Animal(
        id: 15,
        name: "Delfín Rosado",
        scientific_name: "Inia geoffrensis",
        description: "Un delfín de agua dulce, famoso por su color inusual y su inteligencia.",
        weigth: 100,
        height: 250,
        average_age: 30,
        habitat: "Ríos y arroyos de la cuenca amazónica.",
        diet: "Carnívoro, principalmente peces, pero también crustáceos y pequeños mamíferos.",
        gestation: "Gestación de 11 meses, con una sola cría por camada.",
        in_danger: false,
        images: [
            "pink_dolphin-image-1",
            "pink_dolphin-image-3"
        ],
        model_name: "pink_dolphin",
        latitude: -5.51,
        longitude: -74.01,
        spotId: 9
    ),
    Animal(
        id: 17,
        name: "Serpiente de Cascabel",
        scientific_name: "Crotalus durissus",
        description: "Una serpiente venenosa conocida por el sonido distintivo que produce su cascabel al sentirse amenazada.",
        weigth: 4,
        height: 200,
        average_age: 20,
        habitat: "Bosques secos, sabanas y áreas rocosas de América Central y del Sur.",
        diet: "Carnívora, principalmente roedores, aves y pequeños mamíferos.",
        gestation: "Gestación de 6 a 7 meses, con camadas de 10 a 20 crías.",
        in_danger: false,
        images: [
            "cascabel-image-1",
            "cascabel-image-2",
            "cascabel-image-3"
        ],
        model_name: "cascabel",
        latitude: -13.834722,
        longitude: -76.248333,
        spotId: 11
    ),
    Animal(
        id: 20,
        name: "Boa Constrictor",
        scientific_name: "Boa constrictor",
        description: "Una serpiente grande no venenosa, que mata a su presa por constricción, común en América del Sur.",
        weigth: 45,
        height: 400,
        average_age: 30,
        habitat: "Bosques tropicales y subtropicales, sabanas y áreas semiáridas de América Central y del Sur.",
        diet: "Carnívora, alimentándose de mamíferos, aves y reptiles.",
        gestation: "Gestación de 5 a 8 meses, con camadas de 10 a 64 crías.",
        in_danger: false,
        images: [
            "constrictor-image-1",
            "constrictor-image-2"
        ],
        model_name: "constrictor",
        latitude: -11.13,
        longitude: -75.36,
        spotId: 2
    ),
    Animal(
        id: 22,
        name: "Mono Aullador Rojo",
        scientific_name: "Alouatta seniculus",
        description: "Un primate conocido por sus fuertes vocalizaciones que resuenan en los bosques tropicales.",
        weigth: 7,
        height: 60,
        average_age: 20,
        habitat: "Bosques tropicales de América del Sur, desde Colombia hasta el norte de Argentina.",
        diet: "Herbívoro, alimentándose principalmente de hojas, frutas, flores y pequeños insectos.",
        gestation: "Gestación de aproximadamente 6 meses, con una cría por parto.",
        in_danger: false,
        images: [
            "red_monkey-image-1",
            "red_monkey-image-2",
            "red_monkey-image-3"
        ],
        model_name: "red_monkey",
        latitude: -12.81,
        longitude: -69.17,
        spotId: 3
    ),
    Animal(
        id: 23,
        name: "Flamenco Andino",
        scientific_name: "Phoenicoparrus andinus",
        description: "Una especie de flamenco que habita en los lagos de gran altitud de los Andes, destacando por su colorido plumaje.",
        weigth: 3,
        height: 110,
        average_age: 20,
        habitat: "Lagos salinos y alcalinos en regiones montañosas altas, principalmente en los Andes de Perú, Chile, Bolivia y Argentina.",
        diet: "Omnívoro, se alimenta principalmente de algas, pequeños insectos y crustáceos.",
        gestation: "Incubación de aproximadamente 28 a 32 días, con una nidada de un solo huevo.",
        in_danger: false,
        images: [
            "andean_flamenco-image-1",
            "andean_flamenco-image-2",
            "andean_flamenco-image-3"
        ],
        model_name: "andean_flamenco",
        latitude: -15.93,
        longitude: -69.33,
        spotId: 14
    ),
    Animal(
        id: 26,
        name: "Zorro Andino",
        scientific_name: "Lycalopex culpaeus",
        description: "Un zorro nativo de las alturas andinas, conocido por su astucia y adaptabilidad en terrenos rocosos y fríos.",
        weigth: 8,
        height: 60,
        average_age: 13,
        habitat: "Páramos y bosques montanos de los Andes, desde Venezuela hasta el sur de Argentina.",
        diet: "Omnívoro, alimentándose de roedores, aves, insectos, frutas y carroña.",
        gestation: "Gestación de aproximadamente 55 a 60 días, con camadas de 2 a 4 cachorros.",
        in_danger: false,
        images: [
            "andean_fox-image-1",
            "andean_fox-image-2",
            "andean_fox-image-3"
        ],
        model_name: "andean_fox",
        latitude: -9,
        longitude: -77,
        spotId: 16
    ),
    Animal(
        id: 27,
        name: "Llama",
        scientific_name: "Lama glama",
        description: "Un camélido domesticado sin jorobas, conocido por su lana suave y capacidad como animal de carga. Posee orejas largas en forma de banana y un labio superior hendido.",
        weigth: 150,
        height: 170,
        average_age: 20,
        habitat: "Originario de los Andes en Sudamérica, ahora domesticado y encontrado en muchos países. Habita principalmente en regiones montañosas y frías.",
        diet: "Herbívoro, se alimenta de una variedad de vegetación de montaña, incluyendo arbustos bajos y líquenes.",
        gestation: "350 a 360 días, generalmente dando a luz a una cría, conocida como \"cria\".",
        in_danger: false,
        images: [
            "llama-image-1",
            "llama-image-2",
            "llama-image-3"
        ],
        model_name: "llama",
        latitude: -15.924,
        longitude: -69.336,
        spotId: 14
    ),
    Animal(
        id: 34,
        name: "Zorro Costeño",
        scientific_name: "Lycalopex sechurae",
        description: "Especie adaptada a los ecosistemas costeros y las lomas de la Reserva Nacional Lomas de Lachay, conocido por su habilidad para moverse silenciosamente.",
        weigth: 4,
        height: 30,
        average_age: 8,
        habitat: "Zonas áridas y semidesérticas a lo largo de la costa del Pacífico de Sudamérica.",
        diet: "Omnívoro, su dieta incluye insectos, roedores, aves, frutas y vegetación.",
        gestation: "Gestación de aproximadamente 50 días, con camadas de 3 a 6 cachorros.",
        in_danger: false,
        images: [
            "coast_fox-image-1",
            "coast_fox-image-2"
        ],
        model_name: "coast_fox",
        latitude: -11.36,
        longitude: -77.31,
        spotId: 17
    ),
    Animal(
        id: 37,
        name: "Pelícano Peruano",
        scientific_name: "Pelecanus thagus",
        description: "Ave grande que habita en la Zona Reservada Pantanos de Villa, conocida por su gran pico y bolsa gular, usada para pescar.",
        weigth: 7,
        height: 150,
        average_age: 15,
        habitat: "Costas y estuarios a lo largo del Pacífico sudamericano desde Perú hasta Chile.",
        diet: "Carnívoro, se alimenta principalmente de peces, capturados mediante zambullidas.",
        gestation: "Incubación de aproximadamente 30 a 36 días, con nidadas de 2 a 3 huevos.",
        in_danger: false,
        images: [
            "pelican-image-1",
            "pelican-image-2",
            "pelican-image-3"
        ],
        model_name: "pelican",
        latitude: -12.218,
        longitude: -76.937,
        spotId: 18
    ),
    Animal(
        id: 29,
        name: "Carpintero del Marañón",
        scientific_name: "Dryocopus galeatus",
        description: "Un ave conocida por su habilidad para taladrar árboles en busca de insectos en la Selva Baja.",
        weigth: 1,
        height: 35,
        average_age: 15,
        habitat: "Prefiere las áreas boscosas densas y húmedas, típicamente en regiones tropicales.",
        diet: "Insectívoro, se alimenta principalmente de larvas y adultos de insectos.",
        gestation: "Pone de 2 a 4 huevos por nidada, incubación de aproximadamente 14-18 días.",
        in_danger: false,
        images: [
            "carpenter-image-1",
            "carpenter-image-2",
            "carpenter-image-3"
        ],
        model_name: "carpenter",
        latitude: -5.66,
        longitude: -78.47,
        spotId: 13
    )
]

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
            "https://th.bing.com/th/id/OIP.hYWP9ZkxZietAj8Nm8864gAAAA?rs=1&pid=ImgDetMain",
            "https://infoanimales.net/wp-content/uploads/2020/08/perfil-guacamayo-rojo-453x300.jpg",
            "https://th.bing.com/th/id/OIP.K83vb46m6ugbmqOFXLWnlwAAAA?rs=1&pid=ImgDetMain"
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
            "https://extincionanimal.org/wp-content/uploads/2020/05/tucan-andino-1-480x379.jpg",
            "https://extincionanimal.org/wp-content/uploads/2020/05/tucan-andino-2-480x360.jpg",
            "https://th.bing.com/th/id/OIP.ngy6VPfcnzt5eY0DWreZ1wAAAA?rs=1&pid=ImgDetMain"
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
            "https://th.bing.com/th/id/OIP.MOHlpjI8R0AUBdIvgsBpJAAAAA?rs=1&pid=ImgDetMain",
            "https://th.bing.com/th/id/OIP.5D9xNj8_wJuOBVROwvJm_wAAAA?rs=1&pid=ImgDetMain",
            "https://th.bing.com/th/id/OIP._joX0FeDyxrSF3ayAoKB9gAAAA?rs=1&pid=ImgDetMain"
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
            "https://th.bing.com/th/id/OIP.hywp9dthizoN8QdAxeT6SwAAAA?rs=1&pid=ImgDetMain",
            "https://imgs.mongabay.com/wp-content/uploads/sites/25/2016/11/09195758/plan_conservacion_mongabay-8-493x330.jpg",
            "https://1.bp.blogspot.com/-6lQpc_268J0/XAbxk5MPFKI/AAAAAAAAkv0/9rZGiGagl_0tQDCP3SPdNB6QDIsaT2-RgCLcBGAs/s400/region-puno-declara-de-interes-regional-a-la-9420-jpg_604x0.jpg"
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
            "https://th.bing.com/th/id/R.36377ba1d1891bbff18785c90565e89e?rik=s4DhDB6aOClCAQ",
            "https://1.bp.blogspot.com/-DGALd1nbGfo/W8yZ8m7nfyI/AAAAAAAAixk/_1oPdm9yljssk9fU1uBiBnT8KIlnV-C5QCLcBGAs/s1600/sajino.jpg",
            "https://lh4.googleusercontent.com/-X2-6KV6jSts/TWxJU8oMReI/AAAAAAAAABw/P5PXiGUBttk/s1600/3903441-el-sajino-tayassu-tajacu-de-pie-en-pastizales.jpg"
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
            "https://th.bing.com/th/id/R.86475b8f942cb1852da42f726166c4b0?rik=pmCqBURRmHoBxQ&riu=http%3a%2f%2fwww.venadopedia.com%2fwp-content%2fuploads%2f2012%2f10%2fred-deer-2.jpg&ehk=cFNJvUPB57AY5jsHPInDo%2fTa4iByDnCqZJTMWJ0M6wk%3d&risl=&pid=ImgRaw&r=0",
            "https://th.bing.com/th/id/OIP.Or4Sze8wW29yPbl2gXrMpAAAAA?rs=1&pid=ImgDetMain"
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
            "https://th.bing.com/th/id/R.c22a62b1a38f92b5eb2b18d04789f4ff?rik=dBpVo9VhPs9mNw&pid=ImgRaw&r=0&sres=1&sresct=1",
            "https://th.bing.com/th/id/OIP.2CwicqAXKn8ZaoTGT3iABgAAAA?rs=1&pid=ImgDetMain",
            "https://th.bing.com/th/id/R.c5c2c5b13ae722a3fd3d8eb4ad9176e0?rik=82FExvA4Gml82g&riu=http%3a%2f%2fimg3.wikia.nocookie.net%2f__cb20120630160816%2fhonduras%2fes%2fimages%2ff%2ff9%2fVenadocb3portafw0.jpg&ehk=IsZ81bSZGhhh83zz%2bv3I4vdb2NuraAGsY0F3SAfs00I%3d&risl=&pid=ImgRaw&r=0"
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
            "https://medicoplus.com/_next/image?url=https:%2F%2Fplustatic.com%2F2091%2Fconversions%2Fvicu%C3%B1a-large.jpg&w=1024&q=75",
            "https://img.myloview.de/fototapeten/vicuna-comiendo-arbustos-en-el-paramo-de-la-sierra-ecuatoriana-400-277560130.jpg"
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
            "https://th.bing.com/th/id/R.6445761f9daa4873491f69d2aa2568b4?rik=SBwFvVzQ9dO%2b7w&riu=http%3a%2f%2fwww.conserva.co%2fsites%2fdefault%2ffiles%2fstyles%2freport_gallery_medium%2fpublic%2fimages_report%2fIMG_1011a.jpg%3fitok%3dCJeEfq_4&ehk=RTpg8On70tsyKEU8KLRksCk90CDqmicyDL6jQUc9KYI%3d&risl=&pid=ImgRaw&r=0",
            "https://th.bing.com/th/id/R.eb20fb93a802c001a3d42abd962befe2?rik=GnXvRSLtrhU%2bsg&pid=ImgRaw&r=0",
            "https://2.bp.blogspot.com/-jVj7J4-JpZg/W-Dbb3sN4AI/AAAAAAAAjH8/NRoJseh44aYDlBvcTpp9WRKEgk6xS5nLgCEwYBhgL/s400/598de8161cf36.jpeg"
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
            "https://cdn.arcgis.com/sharing/rest/content/items/294a8087ba354d428a8eeac86de34e44/resources/71Wz2VC-mipany0pLAqh0.jpeg?w=400",
            "https://th.bing.com/th/id/OIP.JNgkNu2rAe-bbyFkISG2mwAAAA?rs=1&pid=ImgDetMain",
            "https://4.bp.blogspot.com/-D8-U14iouRI/WATm-WDGjqI/AAAAAAAAeeI/CCjl5zc7iUQ0QREfxKoOZArNq27_sXNNQCLcB/s1600/lobo%2Bde%2Brio%2B11.jpg"
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
            "https://th.bing.com/th/id/OIP.IBD2TVV4Edg0UDQjRHjW6AAAAA?rs=1&pid=ImgDetMain",
            "https://th.bing.com/th/id/OIP.2lY3VAD8ZBUaBzPtKUv5pgAAAA?rs=1&pid=ImgDetMain",
            "https://th.bing.com/th/id/R.653d2872d0bcce324cc8be6bea7f4858?rik=UQIDSbtPt1rkBw&pid=ImgRaw&r=0&sres=1&sresct=1"
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
            "https://th.bing.com/th/id/R.a21e8ffbd1506e7d4a6c43b5d4cf3de2?rik=CRhgWFiWkhH2jQ&riu=http%3a%2f%2fwww.cocodrilopedia.com%2fwp-content%2fuploads%2f2011%2f12%2fcaiman-negro.jpg&ehk=%2fkDxyq9egiAWYWuGkVhJK8LGFqT27Td3DMkeVQM6EJw%3d&risl=&pid=ImgRaw&r=0",
            "https://latinrootstravel.com/wp-content/uploads/2019/10/Black-Caiman-1-480x343.jpg",
            "https://th.bing.com/th/id/R.0fef2373fec89d3d24b40beada344f93?rik=zrl2mhoYbKtQpg&riu=http%3a%2f%2f2.bp.blogspot.com%2f_aDylgVjO-2A%2fSvSbyyVUtlI%2fAAAAAAAAADw%2fUN7n6IwuiRE%2fs320%2fYacare.jpg&ehk=Wok9ls52Cpj4r5l4ID55Kgd5CQuUxHjyDpmcjfVCCTE%3d&risl=&pid=ImgRaw&r=0"
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
            "https://th.bing.com/th/id/R.1f5ab064656f2514b9f78a3b093b5701?rik=jEZF8stZ2AUGwA&pid=ImgRaw&r=0",
            "https://cdn.shopify.com/s/files/1/0461/1774/8901/files/Mono_Choro_Cola_Amarilla_2_a2e6b110-0e15-4b0b-800f-715fee1cd66b_480x480.jpg?v=1638542508",
            "https://alchetron.com/cdn/yellow-tailed-woolly-monkey-f6d16e7a-5107-44ff-8741-bff24e331b1-resize-750.jpg"
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
            "https://th.bing.com/th/id/OIP.c981gsRT77-eNEEJS5a8IwAAAA?rs=1&pid=ImgDetMain",
            "https://th.bing.com/th/id/OIP.NxpW_lE9JdDXClpZvSlYJwAAAA?rs=1&pid=ImgDetMain",
            "https://i.pinimg.com/474x/fb/c1/77/fbc1771ebfa19f3144841cf8349bd11a.jpg"
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
            "https://th.bing.com/th/id/OIP.YzvysN0NFull8CSqBfydkAAAAA?rs=1&pid=ImgDetMain",
            "https://th.bing.com/th/id/OIP.l58FxMTt_qPybW0i5l1oGgAAAA?rs=1&pid=ImgDetMain",
            "https://th.bing.com/th/id/R.e697c20c864ba700aa15de0070ec1bdd?rik=%2bhBtyfJQQVNB7Q&riu=http%3a%2f%2f1.bp.blogspot.com%2f_KZYjBtEY_rU%2fSq6as2NJCTI%2fAAAAAAAACaw%2fg7n50Aw-ccY%2fs400%2fDelfinrosado-AMAZONAS.jpg&ehk=PaAGQEJtMfgbacnA4Xjcd9ccxgUzqo%2bM7tp86gN%2fAic%3d&risl=&pid=ImgRaw&r=0"
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
            "https://th.bing.com/th/id/R.00601c26641181b5edae4873bc0db34f?rik=%2fJGyJwCBYKFLLg&riu=http%3a%2f%2fwww.anipedia.net%2fimages%2ffotos-cascabel.jpg&ehk=Iq9tJQIRC0%2fRnoCE2tkSNfQalev9t%2fxCjjbO47mTlcg%3d&risl=&pid=ImgRaw&r=0",
            "https://animalesde.net/wp-content/uploads/2016/08/Cascabel-diamante-478x300.jpg",
            "https://th.bing.com/th/id/R.6d38d1c941dbe9494721a8ea254e80f7?rik=if0aqYfDOi7X%2fQ&pid=ImgRaw&r=0"
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
            "https://i.ytimg.com/vi/p2eu1LoOjUc/hqdefault.jpg",
            "https://th.bing.com/th/id/OIP.-vpTr5yB_f0IaAzwO4-fSQHaFs?w=600&h=461&rs=1&pid=ImgDetMain"
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
            "https://th.bing.com/th/id/OIP.9Ik_GlnmIYZSD7Lngbgj9QAAAA?rs=1&pid=ImgDetMain",
            "https://1.bp.blogspot.com/-o8jUWDpuk3A/Xqyc2WMYjtI/AAAAAAAALg0/Zi95YdO0qzQu5zpgtFQa1xQIryIZCX12gCLcBGAsYHQ/s400/gettyimages-697865234-612x612.jpg",
            "https://1.bp.blogspot.com/-CnobSJgvaj4/Xqyc2F1qiVI/AAAAAAAALgs/myhwtc09AgQ6rvJmix1WsWpeI0G7PZztgCLcBGAsYHQ/s400/gettyimages-697865078-612x612.jpg"
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
            "https://extincionanimal.org/wp-content/uploads/2020/05/flamenco-andino-3.jpg",
            "https://th.bing.com/th/id/OIP.qKb6sUfTAqyJ8KI2A-7pIAAAAA?rs=1&pid=ImgDetMain",
            "https://th.bing.com/th/id/OIP.4RmVDiZuKHzPfYU8U1JVxgAAAA?rs=1&pid=ImgDetMain"
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
            "https://th.bing.com/th/id/OIP.KVywP16aXJKZXY8uxGaR_gAAAA?rs=1&pid=ImgDetMain",
            "https://th.bing.com/th/id/R.1285f40e96f6a45333cde40a4b753ba6?rik=vAIr0AdEtqB7yw&riu=http%3a%2f%2f2.bp.blogspot.com%2f__M3zo0LRQPY%2fR3lPx6n3qtI%2fAAAAAAAAB5A%2fmjDWPNtEkK8%2fw1200-h630-p-k-no-nu%2fZorro%2b2.jpg&ehk=YqPs7dWVzOv7nPkpqqcOu%2b1w2fc5H0wVOiGryeFu3Y4%3d&risl=&pid=ImgRaw&r=0",
            "https://th.bing.com/th/id/OIP.htSk_D0YNA9dd5NUTJJkFwHaE7?rs=1&pid=ImgDetMain"
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
            "https://th.bing.com/th/id/OIP.cbAOhXQDvumK4HZ6_R7VlwAAAA?rs=1&pid=ImgDetMain",
            "https://amoviajar.com.mx/wp-content/uploads/Viaje-Amoviajar-MACHU-PICCHU-1-1.jpg",
            "https://th.bing.com/th/id/OIP.KW9hY0WU4A1ijyb5z54DqwAAAA?rs=1&pid=ImgDetMain"
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
            "https://2.bp.blogspot.com/-rN-NH99YV94/W8y1IA6aWvI/AAAAAAAAi0Q/2s3mE82t9hciz7owHQgPuPP8RnUY7im-ACLcBGAs/s400/Zorrodesechura_03-min-1.jpg",
            "https://th.bing.com/th/id/R.3684e1b0911a10e33495523234b66396?rik=LYet6F6aaiPPeQ&pid=ImgRaw&r=0"
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
            "https://www.mundoecologia.com.br/wp-content/uploads/2019/10/Pelicano-Peruano-3.jpg",
            "https://i.pinimg.com/originals/ae/17/1d/ae171d32c9fe0882837d2177baf31e69.jpg",
            "https://i.pinimg.com/474x/73/30/a2/7330a211001976bafb3d88a0c8a3b59b--belly-shoebill.jpg"
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
            "https://th.bing.com/th/id/R.2a8cdbb49f909f3c94d064231177e703?rik=JJiJPxfFKmUiJw&pid=ImgRaw&r=0",
            "https://i.pinimg.com/originals/6d/86/e0/6d86e0e017e486133e5be667fe5782d3.jpg",
            "https://images.pxsol.com/1852/company/library/user/133329896481a7d0964bd4153a9a713222f07d0a073.jpg?auto=format&browser=Default%20Browser&h=400&ixlib=php-3.3.1&w=400&s=5387e18d853440ac7f9a4fcf6f595727"
        ],
        model_name: "carpenter",
        latitude: -5.66,
        longitude: -78.47,
        spotId: 13
    )
]

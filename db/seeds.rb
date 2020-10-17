# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#----------------------Genres--------------------# 

country = Genre.create(name: "Country") 
dance = Genre.create(name: "Dance") 
hip_hop = Genre.create(name: "Hip-Hop") 
jazz = Genre.create(name: "Jazz") 
metal = Genre.create(name: "Metal") 
pop = Genre.create(name: "Pop") 
rb = Genre.create(name: "R&B") 
reggae = Genre.create(name: "Reggae") 
rock = Genre.create(name: "Rock") 
alternative = Genre.create(name: "Alternative")   
soul = Genre.create(name: "Soul") 
funk = Genre.create(name: "Funk") 
electronic = Genre.create(name: "Electronic") 
rock = Genre.create(name: "Rock") 
folk = Genre.create(name: "Folk") 
latin = Genre.create(name: "Latin") 
indie = Genre.create(name: "Indie") 

#----------------------Roles--------------------# 

producer = Role.create(name: "Producer")
artist = Role.create(name: "Artist")
musician = Role.create(name: "Musician")
studio_manager = Role.create(name: "Studio Manager")

#----------------------Artists--------------------#

billie_eilish = User.create(
    name: "Billie Eilish Pirate Baird O'Connell", 
    email: "billie@billieeilish.com", 
    password: "billieeilish", 
    location: "Los Angeles, California", 
    can_travel: true, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/f/fa/Billie_Eilish_2019_by_Glenn_Francis_%28cropped%29_2.jpg",
    stage_name: "Billie Eilish" )

billie_eilish.roles << artist
billie_eilish.genres << pop

post_malone = User.create(
    name: "Austin Richard Post", 
    email: "austin@postmalone.com", 
    password: "postmalone", 
    location: "Los Angeles, California", 
    can_travel: false, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/1/12/Post_Malone_at_the_2019_American_Music_Awards.png",
    stage_name: "Post Malone" )

post_malone.roles << artist
post_malone.genres << hip_hop

lizzo = User.create(
    name: "Melissa Viviane Jefferson", 
    email: "melissa@lizzo.com", 
    password: "lizzo", 
    location: "Houston, Texas", 
    can_travel: true, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/9/9d/LizzoBrixt06Nov19-10_%2849216792848%29_%28cropped%29.jpg",
    stage_name: "Lizzo" )

lizzo.roles << artist
lizzo.genres << hip_hop

harry_styles = User.create(
    name: "Harry Edward Styles", 
    email: "harry@harrystyles.com", 
    password: "harrystyles", 
    location: "London, United Kingdom", 
    can_travel: false, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/9/9e/Harry_Styles_November_2014.jpg",
    stage_name: "Harry Styles" )

harry_styles.roles << artist
harry_styles.genres << pop

drake = User.create(
    name: "Aubrey Drake Graham", 
    email: "aubrey@drake.com", 
    password: "drake", 
    location: "Toronto, Canada",
    can_travel: true, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/1/15/Drake_at_The_Carter_Effect_2017_%2836818935200%29_%28cropped%29.jpg",
    stage_name: "Drake" )

drake.roles << artist
drake.genres << hip_hop

#----------------------Producers--------------------#    

rick_rubin = User.create(
    name: "Frederick Jay Rubin", 
    email: "frederick@rickrubin.com", 
    password: "rickrubin", 
    location: "Long Beach, New York",
    can_travel: false, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/4/43/RickRubinSept09.jpg",
    stage_name: "Rick Rubin" )

rick_rubin.roles << producer
rick_rubin.genres << [hip_hop, metal, alternative, rock]

dj_khaled = User.create(
    name: "Khaled Mohamed Khaled", 
    email: "khaled@djkhaled.com", 
    password: "djkhaled", 
    location: "Miami, Florida",
    can_travel: true, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/a/af/DJ_Khaled_2012.jpg",
    stage_name: "DJ Khaled" )

dj_khaled.roles << [producer, artist]
dj_khaled.genres << [hip_hop, reggae, rb]

timbaland = User.create(
    name: "Timothy Zachary Mosley", 
    email: "timothy@timbaland.com", 
    password: "timbaland", 
    location: "Miami, Florida",
    can_travel: false, 
    picture: "https://www.gstatic.com/tv/thumb/persons/431878/431878_v9_bb.jpg",
    stage_name: "Timbaland" )

timbaland.roles << [producer, artist] 
timbaland.genres << [hip_hop, pop, rb]


trent_reznor = User.create(
    name: "Michael Trent Reznor", 
    email: "michael@trentreznor.com", 
    password: "trentreznor", 
    location: "Cleveland, Ohio",
    can_travel: true, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/c/c9/Trent_Reznor-FEB2008_%28cropped%2C_but_higher_quality%29_%282%29.jpg",
    stage_name: "Trent Reznor" )

trent_reznor.roles << [producer, artist]
trent_reznor.genres << [alternative, metal, rock]

benny_blanco = User.create(
    name: "Benjamin Joseph Levin", 
    email: "benjamin@bennyblanco.com", 
    password: "bennyblanco", 
    location: "New York City, New York",
    can_travel: false, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/3/35/Benny_blanco_pi%C3%B1ata_2019.png",
    stage_name: "Benny Blanco" )

benny_blanco.roles << producer
benny_blanco.genres << [hip_hop, pop]

#----------------------Musicians--------------------#  

earl_palmer = User.create(
    name: "Earl Cyril Palmer", 
    email: "earl@earlpalmer.com", 
    password: "earlpalmer", 
    location: "New Orleans, Louisiana",
    can_travel: true, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/e/e9/Earl_Palmer.jpg",
    stage_name: "Earl Palmer" )

earl_palmer.roles << musician
earl_palmer.genres << [jazz, soul, rock, funk]
gene_cipriano = User.create(
    name: "Eugene Cipriano", 
    email: "eugene@genecipriano.com", 
    password: "genecipriano", 
    location: "Los Angeles, California",
    can_travel: false, 
    picture: "https://makinglifeswing.files.wordpress.com/2019/09/genecipriano.jpg",
    stage_name: "Gene Cipriano" )

gene_cipriano.roles << musician
gene_cipriano.genres << [jazz, soul, rock]

hal_blaine = User.create(
    name: "Harold Simon Belsky", 
    email: "harold@halblaine.com", 
    password: "halblaine", 
    location: "Los Angeles, California",
    can_travel: true, 
    picture: "https://m.media-amazon.com/images/M/MV5BMjA1MDU0MTYyNF5BMl5BanBnXkFtZTgwNzU0NDI2NzM@._V1_SY1000_CR0,0,807,1000_AL_.jpg",
    stage_name: "Hal Blaine" )

hal_blaine.roles << musician
hal_blaine.genres << [jazz, soul, rock]

carol_kaye = User.create(
    name: "Carol Kaye", 
    email: "carol@carolkaye.com", 
    password: "carolkaye", 
    location: "Los Angeles, California",
    can_travel: false, 
    picture: "https://musicguy247.typepad.com/.a/6a01a3fcec1396970b022ad3791862200c-pi",
    stage_name: "Carol Kaye" )

carol_kaye.roles << musician
carol_kaye.genres << [jazz, soul, rock, pop]

billy_preston = User.create(
    name: "William Everett Preston", 
    email: "billy@billypreston.com", 
    password: "billypreston", 
    location: "Houston, Texas",
    can_travel: true, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/8/80/Billy_Preston.jpg",
    stage_name: "Billy Preston" )

billy_preston.roles << musician
billy_preston.genres << [jazz, soul, rb, funk]  
#----------------------Instruments + Assoc.--------------------# 

earl_palmer.instruments.create(name: "Legacy Maple", brand: "Ludwig", category: "Percussion", inst_type: "Drum Kit", ) #Earl Palmer
gene_cipriano.instruments.create(name: "Selmer Paris 52JM Alto", brand: "Conn-Selmer", category: "Brass", inst_type: "Saxophone", ) #Gene Cipriano
hal_blaine.instruments.create(name: "Super Classic Blue Sparkle", brand: "Ludwig", category: "Percussion", inst_type: "Drum Kit", ) #Hal Blaine
carol_kaye.instruments.create(name: "Fender Precision Bass", brand: "Fender", category: "String", inst_type: "Bass Guitar", ) #Carol Kaye
billy_preston.instruments.create(name: "Hammond B-3", brand: "Hammond Organ Company", category: "Keyboard", inst_type: "Electric Organ", ) #Billy Preston

#----------------------Studios--------------------# 

capitol = Studio.create(
    name: "Capitol Studios", 
    location: "Los Angeles, California", 
    hourly_rate: 3000, 
    features: "4 studios, 8 subterranean echo chambers. Retractable wall to join Studio A and Studio B for up to 75 musicians in soundtrack/orchestral sessions", 
    description: "", 
    picture: "https://www.capitolstudios.com/wp-content/uploads/2017/11/mixing.jpg")

abbey_road = Studio.create(
    name: "Abbey Road Studios", 
    location: "London, United Kingdom", 
    hourly_rate: 10000, 
    features: "6 studios, restaurant, bar, private garden, one of the oldest and most famous recording studios in the world.", 
    description: "", 
    picture: "http://www.bestdjgearreviews.com/wp-content/uploads/2019/05/ask-abbey-road-chris-bolster-recording-control-room@1400x1050.jpg")

electric_lady = Studio.create(
    name: "Electric Lady Studios", 
    location: "New York City, New York", 
    hourly_rate: 5000, 
    features: "4 studios, mixing suite", 
    description: "", 
    picture: "https://i2.wp.com/nyunews.com/wp-content/uploads/2020/03/pasted-image-0.png?fit=1500%2C843&ssl=1")

fame = Studio.create(
    name: "FAME Recording Studios", 
    location: "Muscle Shoals, Alabama", 
    hourly_rate: 1000, 
    features: "2 studios, historic facilites, collection of historic instruments, Studio B lounge for clients", 
    description: "", 
    picture: "https://i1.wp.com/newsletter.lotosnile.com/uploads/1569325988.jpg?resize=578%2C325&ssl=1")

wiseloord = Studio.create(
    name: "Wiseloord Studios", 
    location: "Hilversum, Netherlands", 
    hourly_rate: 7000, 
    features: "5 studios, 2 specifically for mastering, writing rooms, 3D audio room", 
    description: "", 
    picture: "https://milocostudios.com/wp-content/uploads/2017/10/W-2.jpg")

#----------------------Equipment + Studio Assoc.--------------------# 

capitol.equipments.create(
    name: "AMS Neve 88RS 72",
    brand: "AMS Neve",
    category: "Recording Console",
)

abbey_road.equipments.create(
    name: "AMS Neve 88RS 60",
    brand: "AMS Neve",
    category: "Recording Console",
)

electric_lady.equipments.create(
    name: "SSL 9000J",
    brand: "Solid State Logic",
    category: "Recording Console",
)

fame.equipments.create(
    name: "Neve 8232",
    brand: "AMS Neve",
    category: "Recording Console",
)

wiseloord.equipments.create(
    name: "Euphonix System 5",
    brand: "Euphonix",
    category: "Recording Console",
)

#----------------------Studio Sessions--------------------# 

session1 = StudioSession.create(
    session_time: "2020-10-20 12:30:00",
    duration: 8,
    special_req: "Coconut water in the fridge, A/C at 78 degrees",
)

session2 = StudioSession.create(
    session_time: "2020-11-05 18:00:00",
    duration: 4,
    special_req: "Blankets in recording studio",
)

session3 = StudioSession.create(
    session_time: "2020-11-17 21:00:00",
    duration: 3,
    special_req: "Fridge full of Blue Moon",
)

session4 = StudioSession.create(
    session_time: "2020-12-03 9:00:00",
    duration: 5,
    special_req: "Vegetable and fruit tray for snacking",
)

session5 = StudioSession.create(
    session_time: "2020-12-08 16:00:00",
    duration: 6,
    special_req: "Catering from Chipotle",
)

session1.studio = capitol
session1.cost = session1.duration * capitol.hourly_rate
session1.save

session2.studio = abbey_road
session2.cost = session2.duration * abbey_road.hourly_rate
session2.save

session3.studio = electric_lady
session3.cost = session3.duration * electric_lady.hourly_rate
session3.save

session4.studio = fame
session4.cost = session4.duration * fame.hourly_rate
session4.save

session5.studio = wiseloord
session5.cost = session5.duration * wiseloord.hourly_rate
session5.save
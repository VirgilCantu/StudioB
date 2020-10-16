# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#----------------------Artists--------------------#

User.create(
    name: "Billie Eilish Pirate Baird O'Connell", 
    email: "billie@billieeilish.com", 
    password: "billieeilish", 
    location: "Los Angeles, California", 
    bio:,
    can_travel: true, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/f/fa/Billie_Eilish_2019_by_Glenn_Francis_%28cropped%29_2.jpg",
    stage_name: "Billie Eilish" )

User.create(
    name: "Austin Richard Post", 
    email: "austin@postmalone.com", 
    password: "postmalone", 
    location: "Los Angeles, California", 
    bio:,
    can_travel: false, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/1/12/Post_Malone_at_the_2019_American_Music_Awards.png",
    stage_name: "Post Malone" )

User.create(
    name: "Melissa Viviane Jefferson", 
    email: "melissa@lizzo.com", 
    password: "lizzo", 
    location: "Houston, Texas", 
    bio:,
    can_travel: true, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/9/9d/LizzoBrixt06Nov19-10_%2849216792848%29_%28cropped%29.jpg",
    stage_name: "Lizzo" )

User.create(
    name: "Harry Edward Styles", 
    email: "harry@harrystyles.com", 
    password: "harrystyles", 
    location: "London, England", 
    bio:,
    can_travel: false, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/9/9e/Harry_Styles_November_2014.jpg",
    stage_name: "Harry Styles" )

User.create(
    name: "Aubrey Drake Graham", 
    email: "aubrey@drake.com", 
    password: "drake", 
    location: "Toronto, Canada",
    bio:,
    can_travel: true, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/1/15/Drake_at_The_Carter_Effect_2017_%2836818935200%29_%28cropped%29.jpg",
    stage_name: "Drake" )

#----------------------Producers--------------------#    

User.create(
    name: "Frederick Jay Rubin", 
    email: "frederick@rickrubin.com", 
    password: "rickrubin", 
    location: "Long Beach, New York",
    bio:,
    can_travel: false, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/4/43/RickRubinSept09.jpg",
    stage_name: "Rick Rubin" )


User.create(
    name: "Khaled Mohamed Khaled", 
    email: "khaled@djkhaled.com", 
    password: "djkhaled", 
    location: "Miami, Florida",
    bio:,
    can_travel: true, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/a/af/DJ_Khaled_2012.jpg",
    stage_name: "DJ Khaled" )


User.create(
    name: "Timothy Zachary Mosley", 
    email: "timothy@timbaland.com", 
    password: "timbaland", 
    location: "Miami, Florida",
    bio:,
    can_travel: false, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/5/5a/Timbaland1292010.jpg",
    stage_name: "Timbaland" )


User.create(
    name: "Michael Trent Reznor", 
    email: "michael@trentreznor.com", 
    password: "trentreznor", 
    location: "Cleveland, Ohio",
    bio:,
    can_travel: true, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/c/c9/Trent_Reznor-FEB2008_%28cropped%2C_but_higher_quality%29_%282%29.jpg",
    stage_name: "Trent Reznor" )

User.create(
    name: "Benjamin Joseph Levin", 
    email: "benjamin@bennyblanco.com", 
    password: "bennyblanco", 
    location: "New York City, New York",
    bio:,
    can_travel: false, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/3/35/Benny_blanco_pi%C3%B1ata_2019.png",
    stage_name: "Benny Blanco" )

#----------------------Musicians--------------------#  

User.create(
    name: "Earl Cyril Palmer", 
    email: "earl@earlpalmer.com", 
    password: "earlpalmer", 
    location: "New Orleans, Louisiana",
    bio:,
    can_travel: true, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/e/e9/Earl_Palmer.jpg",
    stage_name: "Earl Palmer" )

User.create(
    name: "Eugene Cipriano", 
    email: "eugene@genecipriano.com", 
    password: "genecipriano", 
    location: "Los Angeles, California",
    bio:,
    can_travel: false, 
    picture: "https://makinglifeswing.files.wordpress.com/2019/09/genecipriano.jpg",
    stage_name: "Gene Cipriano" )


User.create(
    name: "Harold Simon Belsky", 
    email: "harold@halblaine.com", 
    password: "halblaine", 
    location: "Los Angeles, California",
    bio:,
    can_travel: true, 
    picture: "https://m.media-amazon.com/images/M/MV5BMjA1MDU0MTYyNF5BMl5BanBnXkFtZTgwNzU0NDI2NzM@._V1_SY1000_CR0,0,807,1000_AL_.jpg",
    stage_name: "Hal Blaine" )


User.create(
    name: "Carol Kaye", 
    email: "carol@carolkaye.com", 
    password: "carolkaye", 
    location: "Los Angeles, California",
    bio:,
    can_travel: false, 
    picture: "https://musicguy247.typepad.com/.a/6a01a3fcec1396970b022ad3791862200c-pi",
    stage_name: "Carol Kaye" )

User.create(
    name: "William Everett Preston", 
    email: "billy@billypreston.com", 
    password: "billypreston", 
    location: "Houston, Texas",
    bio:,
    can_travel: true, 
    picture: "https://upload.wikimedia.org/wikipedia/commons/8/80/Billy_Preston.jpg",
    stage_name: "Billy Preston" )


#----------------------Genres--------------------# 

    Genre.create(name:"Country")
    Genre.create(name:"Dance")
    Genre.create(name:"Hip-Hop")
    Genre.create(name:"Jazz")
    Genre.create(name:"Metal")
    Genre.create(name:"Pop")
    Genre.create(name:"R&B")
    Genre.create(name:"Reggae")
    Genre.create(name:"Rock")
    Genre.create(name:"Alternative")  
    Genre.create(name:"Soul")
    Genre.create(name:"Punk")
    Genre.create(name:"Electronic")
    Genre.create(name:"Rock")
    Genre.create(name:"Folk")
    Genre.create(name:"Latin")
    Genre.create(name:"Indie")
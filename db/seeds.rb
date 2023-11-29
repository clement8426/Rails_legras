# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

network1 = Network.create(
  name: "Coopérative des Terroirs de France",
  location: "12 Rue de la Monnaie, 35000 Rennes",
  minimum_shipping_amount: "100",
  description: "Nous somme une coopérative de producteurs locaux, nous livrons dans un rayon de 10km autour de Paris. Nous livrons le mardi et le vendredi. Nos produits sont frais et de saison et cultivés dans le respect de l'environnement avec beaucoup d'amour."
)

network2 = Network.create(
  name: "Les Jardins Partagés",
  location: "Place de la Bourse, 33000 Bordeauxs",
  minimum_shipping_amount: "120",
  description: "Coopérative engagée pour une agriculture durable, nous offrons des produits biologiques et équitables. Livraison les mercredis et samedis dans un rayon de 15km de Paris."
)

network3 = Network.create(
  name: "Les Fermes de France",
  location: "Place Stanislas, 54000 Nancy",
  minimum_shipping_amount: "90",
  description: "Petite coopérative familiale, nous fournissons des produits locaux frais. Livraison possible les lundis et jeudis dans Paris intra-muros."
)

network4 = Network.create(
  name: "Harmonie Agricole",
  location: "3 Passage de l'Île, 74000 Annecy",
  minimum_shipping_amount: "110",
  description: "Nous sommes spécialisés dans les fruits et légumes bio, livrés frais à votre porte. Livraisons disponibles le mercredi et le samedi dans et autour de Paris."
)

network5 = Network.create(
  name: "Nature et Progrès",
  location: "5 Avenue Anatole France, 75007 Paris",
  minimum_shipping_amount: "130",
  description: "Coopérative d'agriculteurs passionnés, nous proposons une variété de produits locaux et saisonniers. Livraison les mardis et vendredis, priorité aux commandes éco-responsables."
)

User.create(
  name: "MariedeRennes",
  type: "farmer",
  location: "6 Rue de la Monnaie, 35000 Rennes",
  email: "mariedupont@example.com",
  password: "passwordMarie01",
  description: "Je cultive des variétés anciennes de légumes, tout en respectant les principes de l'agroécologie.",
  network_id: network1.id
)

User.create(
  name: "PierreLeroux",
  type: "farmer",
  location: "18 Rue de Dinan, 35400 Saint-Malo",
  email: "pierreleroux@example.com",
  password: "pierreSecure02",
  description: "Producteur de pommes et de poires bio, je suis engagé dans la préservation de la biodiversité.",
  network_id: network1.id
)


User.create(
  name: "LucieBernard",
  type: "farmer",
  location: "2 Avenue des Pays-Bas, 35200 Rennes",
  email: "luciebernard@example.com",
  password: "luciePass03",
  description: "Éleveuse de volailles en plein air, je m'assure du bien-être animal et de la qualité de mes produits.",
  network_id: network1.id
)

User.create(
  name: "MarieDupont",
  type: "farmer",
  location: "15 rue Sainte-Catherine, 33000 Bordeaux",
  email: "mariedupont@example.com",
  password: "Bordeaux123",
  description: "Spécialisée dans la viticulture, je produis des vins biologiques de la région bordelaise.",
  network_id: network2.id
)

User.create(
  name: "PaulBernard",
  type: "farmer",
  location: "18 avenue Thiers, 33100 Bordeaux",
  email: "paulbernard@example.com",
  password: "Vignoble33",
  description: "Producteur de fromages de chèvre, je m'engage pour une agriculture durable et locale.",
  network_id: network2.id
)

User.create(
  name: "SophieLeroy",
  type: "farmer",
  location: "12 rue des Bahutiers, 33000 Bordeaux",
  email: "sophieleroy@example.com",
  password: "BioLocal47",
  description: "Je cultive des fruits et légumes bio, avec une attention particulière pour les variétés anciennes.",
  network_id: network2.id
)



User.create(
  name: "ClaudeVerger",
  type: "farmer",
  location: "10 Rue Stanislas, 54000 Nancy",
  email: "claudeverger@example.com",
  password: "passwordVerger54",
  description: "Producteur de fruits et légumes biologiques, spécialisé dans les vergers de pommes et poires.",
  network_id: network2.id
)

User.create(
  name: "MarieLavande",
  type: "farmer",
  location: "6 Place Duroc, 54700 Pont-à-Mousson",
  email: "marielavande@example.com",
  password: "lavandePass77",
  description: "Cultivatrice de plantes aromatiques et médicinales, avec une passion pour la lavande et le thym.",
  network_id: network3.id
)

User.create(
  name: "AlainFermier",
  type: "farmer",
  location: "3 Rue Gambetta, 88100 Saint-Dié-des-Vosges",
  email: "alainfermier@example.com",
  password: "fermierAlain88",
  description: "Éleveur et producteur laitier, engagé dans l'agriculture durable et le bien-être animal.",
  network_id: network3.id
)

User.create(
  name: "ClaireDeschamps",
  type: "farmer",
  location: "14 route de Thônes, 74940 Annecy-le-Vieux",
  email: "clairedupont@example.com",
  password: "annecyfarm123",
  description: "Je suis une fermière spécialisée dans la culture biologique des fraises et des cerises, produites avec passion dans la région d'Annecy.",
  network_id: network3.id
)

User.create(
  name: "MarcRousseau",
  type: "farmer",
  location: "33 avenue des Romains, 74000 Annecy",
  email: "marcrousseau@example.com",
  password: "bio74ecure",
  description: "Cultivateur de légumes bio tels que la courgette et la tomate, je m'engage pour une agriculture durable près d'Annecy.",
  network_id: network3.id
)

User.create(
  name: "ClaireDelamot",
  type: "farmer",
  location: "14 route de Thônes, 74940 Annecy-le-Vieux",
  email: "clairedupont@example.com",
  password: "annecyfarm123",
  description: "Je suis une fermière spécialisée dans la culture biologique des fraises et des cerises, produites avec passion dans la région d'Annecy.",
  network_id: network4.id
)

User.create(
  name: "LaurentRousseau",
  type: "farmer",
  location: "33 avenue des Romains, 74000 Annecy",
  email: "marcrousseau@example.com",
  password: "bio74ecure",
  description: "Cultivateur de légumes bio tels que la courgette et la tomate, je m'engage pour une agriculture durable près d'Annecy.",
  network_id: network4.id
)

User.create(
  name: "SophieMarc",
  type: "farmer",
  location: "9 place de l'Hôtel de Ville, 73000 Chambéry",
  email: "sophiebernard@example.com",
  password: "chamberyveg234",
  description: "Fermière passionnée par l'élevage de volailles et la culture de légumes racines, je propose des produits frais et locaux dans la région de Chambéry.",
  network_id: network4.id
)


User.create(
  name: "JeanneMartin",
  type: "farmer",
  location: "18 rue Saint-Martin, 75004 Paris",
  email: "clairedupont@example.com",
  password: "passwordClaire78",
  description: "Je cultive des herbes aromatiques et des petits fruits en agriculture biologique, tout près de Paris.",
  network_id: network5.id
)

User.create(
  name: "JeanMarieBerland",
  type: "farmer",
  location: "5 avenue de la République, 77340 Pontault-Combault",
  email: "marcbernard@example.com",
  password: "marcBio123",
  description: "Passionné par l'agriculture durable, je produis principalement des légumes racines et des salades.",
  network_id: network5.id
)

User.create(
  name: "SophieLeroy",
  type: "farmer",
  location: "32 boulevard Victor Hugo, 78300 Poissy",
  email: "sophieleroy@example.com",
  password: "sophieSecure456",
  description: "Spécialiste des fruits bio, je propose des pommes, poires, et cerises cultivées avec amour.",
  network_id: network5.id
)


# User.create(
#   name: "JeanMartin",
#   type: "client",
#   location: "12 boulvard du Temple, 75003 Paris",
#   email: "jeanmartin@example.com",
#   password: "securepassword123",
# )
p "cooooollllll"

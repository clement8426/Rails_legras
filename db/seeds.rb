# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "open-uri"

p "creating network table..."
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

p "creating user table..."

User.create(
  name: "Marie deRennes",
  type: "farmer",
  location: "6 Rue de la Monnaie, 35000 Rennes",
  email: "mariedeRennes@example.com",
  password: "passwordMarie01",
  description: "Je cultive des variétés anciennes de légumes, tout en respectant les principes de l'agroécologie.",
  network_id: network1.id
)

User.create(
  name: "Pierre Leroux",
  type: "farmer",
  location: "18 Rue de Dinan, 35400 Saint-Malo",
  email: "pierreleroux@example.com",
  password: "pierreSecure02",
  description: "Producteur de pommes et de poires bio, je suis engagé dans la préservation de la biodiversité.",
  network_id: network1.id
)

User.create(
  name: "Lucie Bernard",
  type: "farmer",
  location: "2 Avenue des Pays-Bas, 35200 Rennes",
  email: "luciebernard@example.com",
  password: "luciePass03",
  description: "Éleveuse de volailles en plein air, je m'assure du bien-être animal et de la qualité de mes produits.",
  network_id: network1.id
)

User.create(
  name: "Marie Dupont",
  type: "farmer",
  location: "15 rue Sainte-Catherine, 33000 Bordeaux",
  email: "mariedupont@example.com",
  password: "Bordeaux123",
  description: "Spécialisée dans la viticulture, je produis des vins biologiques de la région bordelaise.",
  network_id: network2.id
)

User.create(
  name: "Paul Bernard",
  type: "farmer",
  location: "18 avenue Thiers, 33100 Bordeaux",
  email: "paulbernard@example.com",
  password: "Vignoble33",
  description: "Producteur de fromages de chèvre, je m'engage pour une agriculture durable et locale.",
  network_id: network2.id
)

User.create(
  name: "Sophie Lareine",
  type: "farmer",
  location: "12 rue des Bahutiers, 33000 Bordeaux",
  email: "sophielareine@example.com",
  password: "BioLocal47",
  description: "Je cultive des fruits et légumes bio, avec une attention particulière pour les variétés anciennes.",
  network_id: network2.id
)

User.create(
  name: "Claude Verger",
  type: "farmer",
  location: "10 Rue Stanislas, 54000 Nancy",
  email: "claudeverger@example.com",
  password: "passwordVerger54",
  description: "Producteur de fruits et légumes biologiques, spécialisé dans les vergers de pommes et poires.",
  network_id: network2.id
)

User.create(
  name: "Marie Lavande",
  type: "farmer",
  location: "6 Place Duroc, 54700 Pont-à-Mousson",
  email: "marielavande@example.com",
  password: "lavandePass77",
  description: "Cultivatrice de plantes aromatiques et médicinales, avec une passion pour la lavande et le thym.",
  network_id: network3.id
)

User.create(
  name: "Alain Fermier",
  type: "farmer",
  location: "3 Rue Gambetta, 88100 Saint-Dié-des-Vosges",
  email: "alainfermier@example.com",
  password: "fermierAlain88",
  description: "Éleveur et producteur laitier, engagé dans l'agriculture durable et le bien-être animal.",
  network_id: network3.id
)

User.create(
  name: "Claire Deschamps",
  type: "farmer",
  location: "14 route de Thônes, 74940 Annecy-le-Vieux",
  email: "clairedeschamps@example.com",
  password: "annecyfarm123",
  description: "Je suis une fermière spécialisée dans la culture biologique des fraises et des cerises, produites avec passion dans la région d'Annecy.",
  network_id: network3.id
)

User.create(
  name: "Marc Rousseau",
  type: "farmer",
  location: "33 avenue des Romains, 74000 Annecy",
  email: "marcrousseau@example.com",
  password: "bio74ecure",
  description: "Cultivateur de légumes bio tels que la courgette et la tomate, je m'engage pour une agriculture durable près d'Annecy.",
  network_id: network3.id
)

User.create(
  name: "Claire Delamot",
  type: "farmer",
  location: "14 route de Thônes, 74940 Annecy-le-Vieux",
  email: "clairedelamot@example.com",
  password: "annecyfarm123",
  description: "Je suis une fermière spécialisée dans la culture biologique des fraises et des cerises, produites avec passion dans la région d'Annecy.",
  network_id: network4.id
)

User.create(
  name: "Laurent Rousseau",
  type: "farmer",
  location: "33 avenue des Romains, 74000 Annecy",
  email: "laurentrousseau@example.com",
  password: "bio74ecure",
  description: "Cultivateur de légumes bio tels que la courgette et la tomate, je m'engage pour une agriculture durable près d'Annecy.",
  network_id: network4.id
)

User.create(
  name: "Sophie Marc",
  type: "farmer",
  location: "9 place de l'Hôtel de Ville, 73000 Chambéry",
  email: "sophiebernard@example.com",
  password: "chamberyveg234",
  description: "Fermière passionnée par l'élevage de volailles et la culture de légumes racines, je propose des produits frais et locaux dans la région de Chambéry.",
  network_id: network4.id
)

User.create(
  name: "Jeanne Martin",
  type: "farmer",
  location: "18 rue Saint-Martin, 75004 Paris",
  email: "clairedupont@example.com",
  password: "passwordClaire78",
  description: "Je cultive des herbes aromatiques et des petits fruits en agriculture biologique, tout près de Paris.",
  network_id: network5.id
)

User.create(
  name: "Jean-Marie Berland",
  type: "farmer",
  location: "5 avenue de la République, 77340 Pontault-Combault",
  email: "marcbernard@example.com",
  password: "marcBio123",
  description: "Passionné par l'agriculture durable, je produis principalement des légumes racines et des salades.",
  network_id: network5.id
)

User.create(
  name: "Sophie Leroy",
  type: "farmer",
  location: "32 boulevard Victor Hugo, 78300 Poissy",
  email: "sophieleroy@example.com",
  password: "sophieSecure456",
  description: "Spécialiste des fruits bio, je propose des pommes, poires, et cerises cultivées avec amour.",
  network_id: network5.id
)

p "creating ingredients table..."
p "creating ingredients table 0/90"
ingredient1 = Ingredient.create(name: "Poulet fermier", price: "8.5", category: "Viandes et volailles")
ingredient1.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67769_origin.jpg'), filename: 'poulet_fermier.jpg', content_type: 'image/jpg')
ingredient1.save
ingredient2 = Ingredient.create(name: "Dinde bio", price: "10", category: "Viandes et volailles")
ingredient2.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170621/69018_origin.jpg'), filename: 'dinde_bio.jpg', content_type: 'image/jpg')
ingredient2.save
ingredient3 = Ingredient.create(name: "Canard confit", price: "12.5", category: "Viandes et volailles")
ingredient3.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170621/69017_origin.jpg'), filename: 'canard_confit.jpg', content_type: 'image/jpg')
ingredient3.save
ingredient4 = Ingredient.create(name: "Cuisse de poulet", price: "5", category: "Viandes et volailles")
ingredient4.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67722_origin.jpg'), filename: 'cuisse_poulet.jpg', content_type: 'image/jpg')
ingredient4.save
ingredient5 = Ingredient.create(name: "Escalope de dinde", price: "9", category: "Viandes et volailles")
ingredient5.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67495_origin.jpg'), filename: 'escalope_dinde.jpg', content_type: 'image/jpg')
ingredient5.save
ingredient6 = Ingredient.create(name: "Magret de canard", price: "14", category: "Viandes et volailles")
ingredient6.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20180116/76803_origin.jpg'), filename: 'magret_canard.jpg', content_type: 'image/jpg')
ingredient6.save
ingredient7 = Ingredient.create(name: "Foie de volaille", price: "7", category: "Viandes et volailles")
ingredient7.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67649_origin.jpg'), filename: 'foie_volaille.jpg', content_type: 'image/jpg')
ingredient7.save
ingredient8 = Ingredient.create(name: "Ailes de poulet épicées", price: "6", category: "Viandes et volailles")
ingredient8.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170621/68942_origin.jpg'), filename: 'ailes_poulet.jpg', content_type: 'image/jpg')
ingredient8.save
ingredient9 = Ingredient.create(name: "Saucisse de poulet", price: "4.5", category: "Viandes et volailles")
ingredient9.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67535_origin.jpg'), filename: 'saucisse_poulet.jpg', content_type: 'image/jpg')
ingredient9.save
ingredient10 = Ingredient.new(name: "Rôti de dinde", price: "11", category: "Viandes et volailles")
ingredient10.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67734_origin.jpg'), filename: 'roti_dinde.jpg', content_type: 'image/jpg')
ingredient10.save

p "creating ingredients table 10/90"
ingredient11 = Ingredient.create(name: "Yaourt Nature", price: "0.5", category: "Produits laitiers")
ingredient11.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67499_origin.jpg'), filename: 'yaourt_nature.jpg', content_type: 'image/jpg')
ingredient11.save
ingredient12 = Ingredient.create(name: "Lait Entier Bio", price: "1.2", category: "Produits laitiers")
ingredient12.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67388_origin.jpg'), filename: 'lait_entier.jpg', content_type: 'image/jpg')
ingredient12.save
ingredient13 = Ingredient.create(name: "Beurre Doux Artisanal", price: "2.3", category: "Produits laitiers")
ingredient13.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20201201/116001_origin.jpg'), filename: 'beurre_doux.jpg', content_type: 'image/jpg')
ingredient13.save
ingredient14 = Ingredient.create(name: "Fromage Blanc Fermier", price: "1.8", category: "Produits laitiers")
ingredient14.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67744_origin.jpg'), filename: 'fromage_blanc.jpg', content_type: 'image/jpg')
ingredient14.save
ingredient15 = Ingredient.create(name: "Crème Fraîche Épaisse", price: "1.6", category: "Produits laitiers")
ingredient15.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67763_origin.jpg'), filename: 'creme_epaisse.jpg', content_type: 'image/jpg')
ingredient15.save
ingredient16 = Ingredient.create(name: "Yaourt aux fruits", price: "2.1", category: "Produits laitiers")
ingredient16.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170622/69201_origin.jpg'), filename: 'yaourt_fruits.jpg', content_type: 'image/jpg')
ingredient16.save
ingredient17 = Ingredient.create(name: "Lait de Chèvre Bio", price: "2.0", category: "Produits laitiers")
ingredient17.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67388_origin.jpg'), filename: 'lait_chevre.jpg', content_type: 'image/jpg')
ingredient17.save
ingredient18 = Ingredient.create(name: "Lait demi-écrémé", price: "2.5", category: "Produits laitiers")
ingredient18.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67388_origin.jpg'), filename: 'lait_demi.jpg', content_type: 'image/jpg')
ingredient18.save
ingredient19 = Ingredient.create(name: "Yaourt BIO", price: "3.0", category: "Produits laitiers")
ingredient19.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67499_origin.jpg'), filename: 'yaourt_bio.jpg', content_type: 'image/jpg')
ingredient19.save
ingredient20 = Ingredient.create(name: "Beurre salé", price: "1.7", category: "Produits laitiers")
ingredient20.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20201201/116001_origin.jpg'), filename: 'beurre_sale.jpg', content_type: 'image/jpg')
ingredient20.save

p "creating ingredients table 20/90"
ingredient21 = Ingredient.create(name: "Camembert de Normandie", price: "3.5", category: "Fromages")
ingredient21.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67633_origin.jpg'), filename: 'camembert_normandie.jpg', content_type: 'image/jpg')
ingredient21.save
ingredient22 = Ingredient.create(name: "Roquefort", price: "4.0", category: "Fromages")
ingredient22.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67558_origin.jpg'), filename: 'roquefort.jpg', content_type: 'image/jpg')
ingredient22.save
ingredient23 = Ingredient.create(name: "Brie de Meaux", price: "3.8", category: "Fromages")
ingredient23.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170621/68973_origin.jpg'), filename: 'brie_meaux.jpg', content_type: 'image/jpg')
ingredient23.save
ingredient24 = Ingredient.create(name: "Comté", price: "5.2", category: "Fromages")
ingredient24.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67555_origin.jpg'), filename: 'comte.jpg', content_type: 'image/jpg')
ingredient24.save
ingredient25 = Ingredient.create(name: "Munster", price: "4.1", category: "Fromages")
ingredient25.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170621/69099_origin.jpg'), filename: 'munster.jpg', content_type: 'image/jpg')
ingredient25.save
ingredient26 = Ingredient.create(name: "Reblochon", price: "4.5", category: "Fromages")
ingredient26.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67516_origin.jpg'), filename: 'reblochon.jpg', content_type: 'image/jpg')
ingredient26.save
ingredient27 = Ingredient.create(name: "Chèvre frais", price: "2.9", category: "Fromages")
ingredient27.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67447_origin.jpg'), filename: 'chevre_frais.jpg', content_type: 'image/jpg')
ingredient27.save
ingredient28 = Ingredient.create(name: "Saint-Nectaire", price: "4.2", category: "Fromages")
ingredient28.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20210308/118446_origin.png'), filename: 'saint_nectaire.jpg', content_type: 'image/jpg')
ingredient28.save
ingredient29 = Ingredient.create(name: "Bleu d'Auvergne", price: "3.6", category: "Fromages")
ingredient29.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170621/68968_origin.jpg'), filename: 'bleu_auvergne.jpg', content_type: 'image/jpg')
ingredient29.save
ingredient30 = Ingredient.create(name: "Cantal", price: "3.9", category: "Fromages")
ingredient30.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67517_origin.jpg'), filename: 'cantal.jpg', content_type: 'image/jpg')
ingredient30.save
p "creating ingredients table 30/90"
ingredient31 = Ingredient.create(name: "Tomate", price: "1.5", category: "légumes")
ingredient31.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67459_origin.jpg'), filename: 'tomate.jpg', content_type: 'image/jpg')
ingredient31.save
ingredient32 = Ingredient.create(name: "Carotte", price: "1.2", category: "légumes")
ingredient32.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67370_origin.jpg'), filename: 'carotte.jpg', content_type: 'image/jpg')
ingredient32.save
ingredient33 = Ingredient.create(name: "Pomme de terre", price: "0.8", category: "légumes")
ingredient33.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67419_origin.jpg'), filename: 'pomme_terre.jpg', content_type: 'image/jpg')
ingredient33.save
ingredient34 = Ingredient.create(name: "Brocoli", price: "2.0", category: "légumes")
ingredient34.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67718_origin.jpg'), filename: 'brocoli.jpg', content_type: 'image/jpg')
ingredient34.save
ingredient35 = Ingredient.create(name: "Courgette", price: "1.7", category: "légumes")
ingredient35.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67437_origin.jpg'), filename: 'courgette.jpg', content_type: 'image/jpg')
ingredient35.save
ingredient36 = Ingredient.create(name: "Aubergine", price: "1.9", category: "légumes")
ingredient36.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67479_origin.jpg'), filename: 'aubergine.jpg', content_type: 'image/jpg')
ingredient36.save
ingredient37 = Ingredient.create(name: "Poivron rouge", price: "2.1", category: "légumes")
ingredient37.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67754_origin.jpg'), filename: 'poivron_rouge.jpg', content_type: 'image/jpg')
ingredient37.save
ingredient38 = Ingredient.create(name: "Épinard", price: "1.4", category: "légumes")
ingredient38.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67594_origin.jpg'), filename: 'epinard.jpg', content_type: 'image/jpg')
ingredient38.save
ingredient39 = Ingredient.create(name: "Chou frisé", price: "1.8", category: "légumes")
ingredient39.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67685_origin.jpg'), filename: 'chou_frise.jpg', content_type: 'image/jpg')
ingredient39.save
ingredient40 = Ingredient.create(name: "Concombre", price: "1.3", category: "légumes")
ingredient40.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67693_origin.jpg'), filename: 'concombre.jpg', content_type: 'image/jpg')
ingredient40.save
p "creating ingredients table 40/90"
ingredient41 = Ingredient.create(name: "Pomme", price: "2.0", category: "fruits")
ingredient41.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67365_origin.jpg'), filename: 'pomme.jpg', content_type: 'image/jpg')
ingredient41.save
ingredient42 = Ingredient.create(name: "Banane", price: "1.8", category: "fruits")
ingredient42.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67637_origin.jpg'), filename: 'banane.jpg', content_type: 'image/jpg')
ingredient42.save
ingredient43 = Ingredient.create(name: "Orange", price: "2.5", category: "fruits")
ingredient43.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67729_origin.jpg'), filename: 'orange.jpg', content_type: 'image/jpg')
ingredient43.save
ingredient44 = Ingredient.create(name: "Poire", price: "2.2", category: "fruits")
ingredient44.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67498_origin.jpg'), filename: 'poire.jpg', content_type: 'image/jpg')
ingredient44.save
ingredient45 = Ingredient.create(name: "Kiwi", price: "1.7", category: "fruits")
ingredient45.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67631_origin.jpg'), filename: 'kiwi.jpg', content_type: 'image/jpg')
ingredient45.save
ingredient46 = Ingredient.create(name: "Ananas", price: "3.0", category: "fruits")
ingredient46.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67503_origin.jpg'), filename: 'ananas.jpg', content_type: 'image/jpg')
ingredient46.save
ingredient47 = Ingredient.create(name: "Mangue", price: "2.8", category: "fruits")
ingredient47.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67380_origin.jpg'), filename: 'mangue.jpg', content_type: 'image/jpg')
ingredient47.save
ingredient48 = Ingredient.create(name: "Raisin", price: "2.6", category: "fruits")
ingredient48.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67419_origin.jpg'), filename: 'raisin.jpg', content_type: 'image/jpg')
ingredient48.save
ingredient49 = Ingredient.create(name: "Cerise", price: "4.0", category: "fruits")
ingredient49.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67491_origin.jpg'), filename: 'cerise.jpg', content_type: 'image/jpg')
ingredient49.save
ingredient50 = Ingredient.create(name: "Fraise", price: "3.5", category: "fruits")
ingredient50.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67613_origin.jpg'), filename: 'fraise.jpg', content_type: 'image/jpg')
ingredient50.save
p "creating ingredients table 50/90"
ingredient51 = Ingredient.create(name: "Blé complet", price: "2.0", category: "Céréales")
ingredient51.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170621/69063_origin.jpg'), filename: 'ble_complet.jpg', content_type: 'image/jpg')
ingredient51.save
ingredient52 = Ingredient.create(name: "Orge perlé", price: "1.8", category: "Céréales")
ingredient52.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20180116/76819_origin.jpg'), filename: 'orge_perle.jpg', content_type: 'image/jpg')
ingredient52.save
ingredient53 = Ingredient.create(name: "Quinoa rouge", price: "3.5", category: "Céréales")
ingredient53.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67636_origin.jpg'), filename: 'quinoa_rouge.jpg', content_type: 'image/jpg')
ingredient53.save
ingredient54 = Ingredient.create(name: "Riz basmati", price: "2.2", category: "Céréales")
ingredient54.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67540_origin.jpg'), filename: 'riz_basmati.jpg', content_type: 'image/jpg')
ingredient54.save
ingredient55 = Ingredient.create(name: "Avoine", price: "1.9", category: "Céréales")
ingredient55.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170621/69046_origin.jpg'), filename: 'avoine.jpg', content_type: 'image/jpg')
ingredient55.save
ingredient56 = Ingredient.create(name: "Maïs en grain", price: "1.6", category: "Céréales")
ingredient56.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67748_origin.jpg'), filename: 'mais_grain.jpg', content_type: 'image/jpg')
ingredient56.save
ingredient57 = Ingredient.create(name: "Épeautre", price: "2.3", category: "Céréales")
ingredient57.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20171206/75868_origin.jpg'), filename: 'epeautre.jpg', content_type: 'image/jpg')
ingredient57.save
ingredient58 = Ingredient.create(name: "Millet", price: "2.0", category: "Céréales")
ingredient58.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20180131/77244_origin.jpg'), filename: 'millet.jpg', content_type: 'image/jpg')
ingredient58.save
ingredient59 = Ingredient.create(name: "Sarrasin", price: "2.5", category: "Céréales")
ingredient59.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170621/69040_origin.jpg'), filename: 'sarrasin.jpg', content_type: 'image/jpg')
ingredient59.save
ingredient60 = Ingredient.create(name: "Riz sauvage", price: "3.0", category: "Céréales")
ingredient60.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170621/69152_origin.jpg'), filename: 'riz_sauvage.jpg', content_type: 'image/jpg')
ingredient60.save
p "creating ingredients table 60/90"
ingredient71 = Ingredient.create(name: "Vin rouge Côte du Rhône", price: "15", category: "Vin et spiritueux")
ingredient71.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67416_origin.jpg'), filename: 'vin_rouge.jpg', content_type: 'image/jpg')
ingredient71.save
ingredient72 = Ingredient.create(name: "Vin blanc Chardonnay", price: "12", category: "Vin et spiritueux")
ingredient72.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67771_origin.jpg'), filename: 'vin_blanc.jpg', content_type: 'image/jpg')
ingredient72.save
ingredient73 = Ingredient.create(name: "Vin rosé de Provence", price: "10", category: "Vin et spiritueux")
ingredient73.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67768_origin.jpg'), filename: 'vin_rose.jpg', content_type: 'image/jpg')
ingredient73.save
ingredient74 = Ingredient.create(name: "Cognac XO", price: "40", category: "Vin et spiritueux")
ingredient74.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67612_origin.jpg'), filename: 'cognac.jpg', content_type: 'image/jpg')
ingredient74.save
ingredient75 = Ingredient.create(name: "Armagnac millésimé", price: "35", category: "Vin et spiritueux")
ingredient75.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67614_origin.jpg'), filename: 'armagnac.jpg', content_type: 'image/jpg')
ingredient75.save
ingredient76 = Ingredient.create(name: "Wisky", price: "30", category: "Vin et spiritueux")
ingredient76.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67387_origin.jpg'), filename: 'wisky.jpg', content_type: 'image/jpg')
ingredient76.save
ingredient77 = Ingredient.create(name: "Champagne brut", price: "50", category: "Vin et spiritueux")
ingredient77.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67569_origin.jpg'), filename: 'champagne.jpg', content_type: 'image/jpg')
ingredient77.save
ingredient78 = Ingredient.create(name: "Pineau des Charentes", price: "20", category: "Vin et spiritueux")
ingredient78.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67771_origin.jpg'), filename: 'pineau.jpg', content_type: 'image/jpg')
ingredient78.save
ingredient79 = Ingredient.create(name: "Eau-de-vie de Poire", price: "25", category: "Vin et spiritueux")
ingredient79.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20190308/88958_origin.jpg'), filename: 'eau_de_vie.jpg', content_type: 'image/jpg')
ingredient79.save
ingredient80 = Ingredient.create(name: "Rhum artisanal", price: "18", category: "Vin et spiritueux")
ingredient80.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67743_origin.jpg'), filename: 'rhum.jpg', content_type: 'image/jpg')
ingredient80.save
p "creating ingredients table 70/90"
ingredient81 = Ingredient.create(name: "Jus de pomme artisanal", price: "3.0", category: "Boissons non alcoolisées")
ingredient81.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20210125/117604_origin.jpg'), filename: 'jus_pomme.jpg', content_type: 'image/jpg')
ingredient81.save
ingredient82 = Ingredient.create(name: "Limonade bio au citron", price: "2.5", category: "Boissons non alcoolisées")
ingredient82.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170621/69087_origin.jpg'), filename: 'limonade_bio.jpg', content_type: 'image/jpg')
ingredient82.save
ingredient83 = Ingredient.create(name: "Infusion de verveine locale", price: "4.0", category: "Boissons non alcoolisées")
ingredient83.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170621/69184_origin.jpg'), filename: 'infusion_verveine.jpg', content_type: 'image/jpg')
ingredient83.save
ingredient84 = Ingredient.create(name: "Eau minérale naturelle de source", price: "1.2", category: "Boissons non alcoolisées")
ingredient84.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20190308/88958_origin.jpg'), filename: 'eau_minerale.jpg', content_type: 'image/jpg')
ingredient84.save
ingredient85 = Ingredient.create(name: "Nectar de pêche de vigne", price: "3.5", category: "Boissons non alcoolisées")
ingredient85.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20210309/118452_origin.png'), filename: 'nectar_peche.jpg', content_type: 'image/jpg')
ingredient85.save
ingredient86 = Ingredient.create(name: "Kombucha artisanal", price: "4.2", category: "Boissons non alcoolisées")
ingredient86.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170621/69187_origin.jpg'), filename: 'kombucha.jpg', content_type: 'image/jpg')
ingredient86.save
ingredient87 = Ingredient.create(name: "Sirop de lavande bio", price: "5.0", category: "Boissons non alcoolisées")
ingredient87.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67415_origin.jpg'), filename: 'sirop_lavande.jpg', content_type: 'image/jpg')
ingredient87.save
ingredient88 = Ingredient.create(name: "Smoothie bio aux fruits rouges", price: "3.7", category: "Boissons non alcoolisées")
ingredient88.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20180717/81462_origin.png'), filename: 'smoothie_fruits.jpg', content_type: 'image/jpg')
ingredient88.save
ingredient89 = Ingredient.create(name: "Jus d'abricot frais pressé", price: "2.5", category: "Boissons non alcoolisées")
ingredient89.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170622/69209_w200h200cxt0cyt0cxb700cyb700.jpg'), filename: 'jus_carotte.jpg', content_type: 'image/jpg')
ingredient89.save
ingredient90 = Ingredient.create(name: "Thé glacé bio maison", price: "2.8", category: "Boissons non alcoolisées")
ingredient90.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67435_origin.jpg'), filename: 'the_glace.jpg', content_type: 'image/jpg')
ingredient90.save
p "creating ingredients table 80/90"
ingredient61 = Ingredient.create(name: "Thym", price: "2.5", category: "Epices et aromates")
ingredient61.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67735_origin.jpg'), filename: 'thym.jpg', content_type: 'image/jpg')
ingredient61.save
ingredient62 = Ingredient.create(name: "Basilic", price: "2.0", category: "Epices et aromates")
ingredient62.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67553_origin.jpg'), filename: 'basilic.jpg', content_type: 'image/jpg')
ingredient62.save
ingredient63 = Ingredient.create(name: "Romarin", price: "2.3", category: "Epices et aromates")
ingredient63.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67467_origin.jpg'), filename: 'romarin.jpg', content_type: 'image/jpg')
ingredient63.save
ingredient64 = Ingredient.create(name: "Sarriette", price: "3.0", category: "Epices et aromates")
ingredient64.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20210114/117247_origin.jpeg'), filename: 'sarriette.jpg', content_type: 'image/jpg')
ingredient64.save
ingredient65 = Ingredient.create(name: "Laurier", price: "1.8", category: "Epices et aromates")
ingredient65.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170621/68932_origin.jpg'), filename: 'laurier.jpg', content_type: 'image/jpg')
ingredient65.save
ingredient66 = Ingredient.create(name: "Persil", price: "1.5", category: "Epices et aromates")
ingredient66.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67650_origin.jpg'), filename: 'persil.jpg', content_type: 'image/jpg')
ingredient66.save
ingredient67 = Ingredient.create(name: "Ciboulette", price: "2.2", category: "Epices et aromates")
ingredient67.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67695_origin.jpg'), filename: 'ciboulette.jpg', content_type: 'image/jpg')
ingredient67.save
ingredient68 = Ingredient.create(name: "Estragon", price: "3.5", category: "Epices et aromates")
ingredient68.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67546_origin.jpg'), filename: 'estragon.jpg', content_type: 'image/jpg')
ingredient68.save
ingredient69 = Ingredient.create(name: "Menthe poivrée", price: "2.7", category: "Epices et aromates")
ingredient69.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67345_origin.jpg'), filename: 'menthe_poivree.jpg', content_type: 'image/jpg')
ingredient69.save
ingredient70 = Ingredient.create(name: "Origan", price: "2.0", category: "Epices et aromates")
ingredient70.photo.attach(io: URI.open('https://assets.afcdn.com/recipe/20170607/67405_origin.jpg'), filename: 'origan.jpg', content_type: 'image/jpg')
ingredient70.save
p "creating ingredients table 90/90"

p "creating user_ingredients table..."
User.find_each do |user|
  ingredient_ids = Ingredient.pluck(:id).sample(3)

  ingredient_ids.each do |ingredient_id|
    UserIngredient.create(
      user_id: user.id,
      ingredient_id: ingredient_id
    )
  end
end


p "cooooollllll"

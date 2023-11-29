# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

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
  name: "MariedeRennes",
  type: "farmer",
  location: "6 Rue de la Monnaie, 35000 Rennes",
  email: "mariedeRennes@example.com",
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
  name: "SophieLareine",
  type: "farmer",
  location: "12 rue des Bahutiers, 33000 Bordeaux",
  email: "sophielareine@example.com",
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
  email: "clairedeschamps@example.com",
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
  email: "clairedelamot@example.com",
  password: "annecyfarm123",
  description: "Je suis une fermière spécialisée dans la culture biologique des fraises et des cerises, produites avec passion dans la région d'Annecy.",
  network_id: network4.id
)

User.create(
  name: "LaurentRousseau",
  type: "farmer",
  location: "33 avenue des Romains, 74000 Annecy",
  email: "laurentrousseau@example.com",
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

p "creating ingredients table..."
p "creating ingredients table 0/90"
Ingredient.create(name: "Poulet fermier", price: "8.5", category: "Viandes et volailles")
Ingredient.create(name: "Dinde bio", price: "10", category: "Viandes et volailles")
Ingredient.create(name: "Canard confit", price: "12.5", category: "Viandes et volailles")
Ingredient.create(name: "Cuisse de poulet", price: "5", category: "Viandes et volailles")
Ingredient.create(name: "Escalope de dinde", price: "9", category: "Viandes et volailles")
Ingredient.create(name: "Magret de canard", price: "14", category: "Viandes et volailles")
Ingredient.create(name: "Foie de volaille", price: "7", category: "Viandes et volailles")
Ingredient.create(name: "Ailes de poulet épicées", price: "6", category: "Viandes et volailles")
Ingredient.create(name: "Saucisse de poulet", price: "4.5", category: "Viandes et volailles")
Ingredient.create(name: "Rôti de dinde", price: "11", category: "Viandes et volailles")

p "creating ingredients table 10/90"
Ingredient.create(name: "Lait Entier Bio", price: "1.2", category: "Produits laitiers")
Ingredient.create(name: "Yaourt Nature", price: "0.5", category: "Produits laitiers")
Ingredient.create(name: "Beurre Doux Artisanal", price: "2.3", category: "Produits laitiers")
Ingredient.create(name: "Fromage Blanc Fermier", price: "1.8", category: "Produits laitiers")
Ingredient.create(name: "Crème Fraîche Épaisse", price: "1.6", category: "Produits laitiers")
Ingredient.create(name: "Yaourt aux fruits", price: "2.1", category: "Produits laitiers")
Ingredient.create(name: "Lait de Chèvre Bio", price: "2.0", category: "Produits laitiers")
Ingredient.create(name: "Lait demi-écrémé", price: "2.5", category: "Produits laitiers")
Ingredient.create(name: "Yaourt BIO", price: "3.0", category: "Produits laitiers")
Ingredient.create(name: "Beurre salé", price: "1.7", category: "Produits laitiers")

p "creating ingredients table 20/90"
Ingredient.create(name: "Camembert de Normandie", price: "3.5", category: "Fromages")
Ingredient.create(name: "Roquefort", price: "4.0", category: "Fromages")
Ingredient.create(name: "Brie de Meaux", price: "3.8", category: "Fromages")
Ingredient.create(name: "Comté", price: "5.2", category: "Fromages")
Ingredient.create(name: "Munster", price: "4.1", category: "Fromages")
Ingredient.create(name: "Reblochon", price: "4.5", category: "Fromages")
Ingredient.create(name: "Chèvre frais", price: "2.9", category: "Fromages")
Ingredient.create(name: "Saint-Nectaire", price: "4.2", category: "Fromages")
Ingredient.create(name: "Bleu d'Auvergne", price: "3.6", category: "Fromages")
Ingredient.create(name: "Cantal", price: "3.9", category: "Fromages")
p "creating ingredients table 30/90"
Ingredient.create(name: "Tomate", price: "1.5", category: "légumes")
Ingredient.create(name: "Carotte", price: "1.2", category: "légumes")
Ingredient.create(name: "Pomme de terre", price: "0.8", category: "légumes")
Ingredient.create(name: "Brocoli", price: "2.0", category: "légumes")
Ingredient.create(name: "Courgette", price: "1.7", category: "légumes")
Ingredient.create(name: "Aubergine", price: "1.9", category: "légumes")
Ingredient.create(name: "Poivron rouge", price: "2.1", category: "légumes")
Ingredient.create(name: "Épinard", price: "1.4", category: "légumes")
Ingredient.create(name: "Chou frisé", price: "1.8", category: "légumes")
Ingredient.create(name: "Concombre", price: "1.3", category: "légumes")
p "creating ingredients table 40/90"
Ingredient.create(name: "Pomme", price: "2.0", category: "fruits")
Ingredient.create(name: "Banane", price: "1.8", category: "fruits")
Ingredient.create(name: "Orange", price: "2.5", category: "fruits")
Ingredient.create(name: "Poire", price: "2.2", category: "fruits")
Ingredient.create(name: "Kiwi", price: "1.7", category: "fruits")
Ingredient.create(name: "Ananas", price: "3.0", category: "fruits")
Ingredient.create(name: "Mangue", price: "2.8", category: "fruits")
Ingredient.create(name: "Raisin", price: "2.6", category: "fruits")
Ingredient.create(name: "Cerise", price: "4.0", category: "fruits")
Ingredient.create(name: "Fraise", price: "3.5", category: "fruits")
p "creating ingredients table 50/90"
Ingredient.create(name: "Blé complet", price: "2.0", category: "Céréales")
Ingredient.create(name: "Orge perlé", price: "1.8", category: "Céréales")
Ingredient.create(name: "Quinoa rouge", price: "3.5", category: "Céréales")
Ingredient.create(name: "Riz basmati", price: "2.2", category: "Céréales")
Ingredient.create(name: "Avoine", price: "1.9", category: "Céréales")
Ingredient.create(name: "Maïs en grain", price: "1.6", category: "Céréales")
Ingredient.create(name: "Épeautre", price: "2.3", category: "Céréales")
Ingredient.create(name: "Millet", price: "2.0", category: "Céréales")
Ingredient.create(name: "Sarrasin", price: "2.5", category: "Céréales")
Ingredient.create(name: "Riz sauvage", price: "3.0", category: "Céréales")
p "creating ingredients table 60/90"
Ingredient.create(name: "Vin rouge Côte du Rhône", price: "15", category: "Vin et spiritueux")
Ingredient.create(name: "Vin blanc Chardonnay", price: "12", category: "Vin et spiritueux")
Ingredient.create(name: "Vin rosé de Provence", price: "10", category: "Vin et spiritueux")
Ingredient.create(name: "Cognac XO", price: "40", category: "Vin et spiritueux")
Ingredient.create(name: "Armagnac millésimé", price: "35", category: "Vin et spiritueux")
Ingredient.create(name: "Calvados artisanal", price: "30", category: "Vin et spiritueux")
Ingredient.create(name: "Champagne brut", price: "50", category: "Vin et spiritueux")
Ingredient.create(name: "Pineau des Charentes", price: "20", category: "Vin et spiritueux")
Ingredient.create(name: "Eau-de-vie de Poire", price: "25", category: "Vin et spiritueux")
Ingredient.create(name: "Pastis artisanal", price: "18", category: "Vin et spiritueux")
p "creating ingredients table 70/90"
Ingredient.create(name: "Jus de pomme artisanal", price: "3.0", category: "Boissons non alcoolisées")
Ingredient.create(name: "Limonade bio au citron", price: "2.5", category: "Boissons non alcoolisées")
Ingredient.create(name: "Infusion de verveine locale", price: "4.0", category: "Boissons non alcoolisées")
Ingredient.create(name: "Eau minérale naturelle de source", price: "1.2", category: "Boissons non alcoolisées")
Ingredient.create(name: "Nectar de pêche de vigne", price: "3.5", category: "Boissons non alcoolisées")
Ingredient.create(name: "Kombucha artisanal", price: "4.2", category: "Boissons non alcoolisées")
Ingredient.create(name: "Sirop de lavande bio", price: "5.0", category: "Boissons non alcoolisées")
Ingredient.create(name: "Smoothie bio aux fruits rouges", price: "3.7", category: "Boissons non alcoolisées")
Ingredient.create(name: "Jus de carotte frais pressé", price: "2.5", category: "Boissons non alcoolisées")
Ingredient.create(name: "Thé glacé bio maison", price: "2.8", category: "Boissons non alcoolisées")
p "creating ingredients table 80/90"
Ingredient.create(name: "Thym", price: "2.5", category: "Epices et aromates")
Ingredient.create(name: "Basilic", price: "2.0", category: "Epices et aromates")
Ingredient.create(name: "Romarin", price: "2.3", category: "Epices et aromates")
Ingredient.create(name: "Sarriette", price: "3.0", category: "Epices et aromates")
Ingredient.create(name: "Laurier", price: "1.8", category: "Epices et aromates")
Ingredient.create(name: "Persil", price: "1.5", category: "Epices et aromates")
Ingredient.create(name: "Ciboulette", price: "2.2", category: "Epices et aromates")
Ingredient.create(name: "Estragon", price: "3.5", category: "Epices et aromates")
Ingredient.create(name: "Menthe poivrée", price: "2.7", category: "Epices et aromates")
Ingredient.create(name: "Origan", price: "2.0", category: "Epices et aromates")
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

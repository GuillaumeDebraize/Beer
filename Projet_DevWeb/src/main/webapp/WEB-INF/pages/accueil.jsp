<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<link rel="stylesheet" type="text/css" href="css/style.css">

<head>

<meta charset="utf-8">

<link rel="shortcut icon" href="images/bierelogo.png"
	type="image/x-icon" />
<link rel="icon" href="images/bierelogo.png" type="image/x-icon" />

<script src="js/jquery.js" type="text/javascript" charset="utf-8"></script>
<script src="js/mes_scripts.js" type="text/javascript" charset="utf-8"
	async defer></script>
	
<title>Beer - Accueil</title>

</head>


<body>
	<div class="bloc_page">
	
		<!-- Header -->
		<c:import url="header.jsp">

		</c:import>

		<div id="banniere_image">
			<div id="banniere_description">La bière, c'est beau...</div>
		</div>

		<section id="section1">
			<p class="texte_presentation">La plus grande invention de
				l'histoire de l'humanité est sans aucun doute la bière. Oh, je vous
				accorde que la roue est elle aussi une belle invention, mais elle
				n'accompagne pas aussi bien une pizza.</p>
			<p class="texte_presentation">
				<em>[Dave Barry, humoriste américain]</em>
			</p>
		</section>


		<section id="section_principale">
			<aside>
				<h1>À propos du site</h1>
				<img src="images/bulle.png" alt="" id="fleche_bulle" />
				<div id="photo_homer"></div>
				<p>Tooo ! Moi c'est Homer, fervent défenseur de la bière Duff.</p>
				<p>Ici vous pourrez déguster de bonnes bières fraiches avec moi
					et me donner vos impressions.</p>
				<p>Je suis aussi présent sur les réseaux sociaux que tu connais
					bien :</p>
				<p id="les_logos">
					<img src="images/white_facebook.png" alt="Facebook" /> <img
						src="images/white_twitter.png" alt="Twitter" /> <img
						src="images/white_vimeo.png" alt="Vimeo" /> <img
						src="images/white_pinterest.png" alt="Pinterest" /> <img
						src="images/white_rss.png" alt="RSS" />
				</p>
			</aside>

			<section id="section_secondaire">
				<h1 class="titre_acceuil">La fabrication de la bière...</h1>
				<article id="fabrication_biere">
					<p>
						<span class="text_valorise">Tout d'abord de l'eau</span> , c'est
						le plus important. Une bonne eau de source contribue à la qualité
						de la bière.
					</p>

					<p>
						<span class="text_valorise">Le grain</span> : généralement de
						l'orge utilisé pour sa teneur élevée en sucres fermentables.
						L'orge est "malté" (trempé dans de l'eau jusqu'a ce qu'il commence
						à germer ; puis séché dans un four. Le "maltage" libère l'amidon
						qui une fois mélangé à de l'eau chaude se transformera en sucre
						nécessaire à la fermentation. A ce "moût", on rajoute du houblon
						puis, après refroidissement la levure. Tous ces ingrédients,
						donneront, goût, arôme et amertume. Ils permettront également la
						conservation de la bière. Une combinaison de différents malts
						donnera la cuvée désirée. (voir lien ci-dessous pour
						renseignements sur l'orge, le houblon et le blé).
					</p>

					<p>
						Certaines bières contiennent du <span class="text_valorise">blé
							mélangé à l'orge</span> . La bière à base de blé (jamais utilisé sans
						orge), a une couleur claire et est plus désaltérante. On en trouve
						dans le sud de l'Allemagne, en Belgique, mais aussi aux Etats-Unis
						et au canada.
					</p>

					<p>
						Tout comme pour le pain, les yaourts, le vin, <span
							class="text_valorise">la levure</span> est indispensable. Elle
						consume les sucres les transformant en alcool.
					</p>

					<p>
						<span class="text_valorise">Le houblon</span>, qui contribue à
						donner à la bière son arôme et son goût, n'était pas utilisé à
						l'origine. On utilisait des épices, des herbes ou des fruits pour
						aromatiser et conserver la bière. On retrouve encore de nos jours
						ces pratiques. Certains brasseurs se refusent à utiliser autre
						chose que du houblon.
					</p>

					<p>
						<span class="text_valorise">La fermentation haute</span> est la
						plus ancienne méthode de brassage, elle intervient entre 15 et 20
						° c et ce pendant une courte période. La fermentation basse est
						aujourd'hui la plus utilisée. La température est comprise entre 6
						à 8 ° c et la durée est longue (de 7 à 10 jours).
					</p>

					<p>
						La bière est ensuite laissée à <span class="text_valorise">décanter
							pendant un certain temps</span> qui peut aller d'une semaine à plusieurs
						mois, voire années. Les ales et les stouts ne sont pas stockées
						longtemps alors que les lagers reposent une longue période.
					</p>

					<p>
						<em>Cet article est extrait du site de <a
							href="http://www.gerard-verhoest.com/bieres.htm" target="_blank">la
								découverte de la bière</a>
						</em>
					</p>

				</article>

				<h1 class="titre_acceuil">La fabrication, en image...</h1>
				<p>
					<em>Cette vidéo a été réalisée par l'équipe des <a
						href="http://www.les3brasseurs.com/">3 Brasseurs</a></em>
				</p>
				<video src="videos/Fabrication_bière.mp4" controls
					poster="images/fond-video.PNG" width="80%">Video de
					présentation⁪
				</video⁪⁪>

			</section>

		</section>

		<!-- Footer -->
		<c:import url="footer.jsp">

		</c:import>

	</div>
</body>
</html>
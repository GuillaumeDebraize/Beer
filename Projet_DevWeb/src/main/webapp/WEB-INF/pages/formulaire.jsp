<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<link rel="stylesheet" type="text/css" href="css/style.css">

<head>
<meta charset="utf-8">
<title>Beer - Formulaire d'ajout</title>
<link rel="shortcut icon" href="images/bierelogo.png"
	type="image/x-icon" />
<link rel="icon" href="images/bierelogo.png" type="image/x-icon" />
<script src="js/jquery.js" type="text/javascript" charset="utf-8"></script>
<script src="js/mes_scripts.js" type="text/javascript" charset="utf-8"
	async defer></script>
</head>
<body>
	<div class="bloc_page">
		<!-- Header -->
		<c:import url="header.jsp">

		</c:import>

		<div id="banniere_image2">
			<div id="banniere_description">La bière, c'est bon...</div>
		</div>

		<section id="section_principale">
			<aside>
				<h1>À propos du formulaire</h1>
				<img src="images/bulle.png" alt="" id="fleche_bulle" />
				<div id="photo_homer2">
				</div>
				<p>Tooo ! Moi c'est Homer, fervent défenseur de la bière Duff.</p>
				<p>Grâce à ce formulaire tu peux ajouter une bière que tu as
					gouté et me dire ce que tu en a pensé.</p>

				<p id="les_logos">
					<img src="images/white_facebook.png" alt="Facebook" /> <img
						src="images/white_twitter.png" alt="Twitter" /> <img
						src="images/white_vimeo.png" alt="Vimeo" /> <img
						src="images/white_pinterest.png" alt="Pinterest" /> <img
						src="images/white_rss.png" alt="RSS" />
				</p>
			</aside>

			<section id="section_secondaire">

				<p>Voici un beau formulaire qui ne demande qu'à être rempli :</p>

				<form id="formulaire_ajout" method="post">
					<fieldset>
						<legend>Étape 1: Votre bière</legend>

						<ol>
							<li><label for="nom">Nom</label> <input id="nom" name="nom"
								type="text" placeholder="Duvel Tripel Hop" required autofocus /></li>
							<li><label for="origine">Origine</label> <input
								name="origine" type="text" placeholder="France" required /></li>
							<li><label>Note</label>
								<table class="tab_rating">
									<tr>
										<td><input class="btn_radio_note" name="rate" type="radio"
											value="1" id="1" required></td>
										<td><input class="btn_radio_note" name="rate" type="radio"
											value="2" id="2" required></td>
										<td><input class="btn_radio_note" name="rate" type="radio"
											value="3" id="3" required></td>
										<td><input class="btn_radio_note" name="rate" type="radio"
											value="4" id="4" required></td>
										<td><input class="btn_radio_note" name="rate" type="radio"
											value="5" id="5" required></td>
									</tr>
									<tr>
										<td><label class="label_btn_radio_note" for="1">1</label></td>
										<td><label class="label_btn_radio_note" for="2">2</label></td>
										<td><label class="label_btn_radio_note" for="3">3</label></td>
										<td><label class="label_btn_radio_note" for="4">4</label></td>
										<td><label class="label_btn_radio_note" for="5">5</label></td>
									</tr>
								</table></li>
							<li><label for="image">Photo*</label> <input id="image"
								type="url" name="image" placeholder="URL de l'image" />
								<p id="asterix">*entrez le lien vers une image</p></li>
						</ol>
					</fieldset>

					<fieldset>
						<legend>Étape 2: Vos coordonnées</legend>
						<ol>
							<li><label for="name">Nom</label> <input name="name"
								placeholder="Prénom et Nom" required></input></li>
							<li><label for="email">Adresse e-mail</label> <input
								name="email" type="email" placeholder="exemple@domaine.com"
								required></li>
						</ol>
					</fieldset>

					<fieldset>
						<legend>Étape 3: Caractéristiques et commentaires</legend>
						<ol>
							<li><label for="couleur">Couleur</label> <select
								name="couleur" id="couleur">
									<c:forEach var="couleur" items="${listeCouleurs}">
										<option value="${couleur.id}">${couleur.nom}</option>
									</c:forEach>
							</select></li>
							<li><label for="alcoolisee">Bière alcoolisée ?</label>
								<table id="tab_btn_radio">
									<tr>
										<td><input class="btn_radio" name="alcoolisee"
											type="radio" value="oui" id="alcoolisee" required><label
											class="label_btn_radio" for="alcoolisee">Oui</label></td>
										<td><input class="btn_radio" name="alcoolisee"
											type="radio" value="non" id="non_alcoolisee" required><label
											class="label_btn_radio" for="non_alcoolisee">Non</label></td>
									</tr>
								</table></li>
							<li id="toHide"><label for="degre">Degré d'alcool</label> <input
								name="degre"  placeholder="5.9"></li>
							<li><label for="brasserie">Nom de la brasserie</label> <input
								name="brasserie" placeholder="Duvel-Moortgat"></li>
							<li><label for="fermentation">Fermentation</label> <select
								name="fermentation" id="fermentation">
									<option value="none">-</option>
									<option value="basse">Basse</option>
									<option value="moyenne">Moyenne</option>
									<option value="haute">Haute</option>
							</select></li>
							<li><label for="description">Description</label> <textarea
									name="description" rows=5></textarea></li>
						</ol>
					</fieldset>

					<fieldset class="bloc_btn" id="bloc_btn_ajouter">
						<button class="btn_submit" id="btn_submitForm" type=submit value="Ajouter">Ajouter !</button>
					</fieldset>
				</form>
			</section>
		</section>

		<!-- Footer -->
		<c:import url="footer.jsp">

		</c:import>

	</div>
</body>
</html>
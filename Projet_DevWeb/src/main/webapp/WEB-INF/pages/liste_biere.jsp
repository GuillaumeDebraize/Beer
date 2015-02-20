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

<title>Beer - Liste des bières</title>
</head>
<body>
	<div class="bloc_page">
		<!-- Header -->
		<c:import url="header.jsp">
			
		</c:import>

		<div id="banniere_image3">
			<div id="banniere_description">La bière, c'est beau...</div>
		</div>

		<section id="section1">
			<p class="texte_presentation">Cette page a pour but de vous faire
				découvrir des bières du monde entier et de donner votre avis sur
				celles que vous avez testé !</p>
		</section>


		<section id="section_principale">
		<!-- aside -->
		<c:import url="aside.jsp">

		</c:import>
		
			<section id="section_secondaire">
				<div id="tableau_presentation">

					<c:forEach var="biere" items="${listeBieres}">
						<div class="div_biere" id="biere_${biere.id}">
							<div id="nom_biere1" class="nom_biere">
								<h1>${biere.nom}</h1>
							</div>

							<div id="bloc_info">
								<p id="img_biere">
									<img src="${biere.url}" alt="image de la bière" id="img_biere" />
								</p>
								<div id="info_biere">
									<table class="tab_description">
										<tr>
											<td>Origine</td>
											<td>: ${biere.origine}</td>
										</tr>
										<tr>
											<td>Couleur</td>
											<td id="couleur">: ${biere.couleur.nom}</td>
										</tr>
										<tr>
											<td>Degré</td>
											<td>: ${biere.degre}°</td>
										</tr>
									</table>
								</div>
							</div>

							<div id="espace_bouton">
								<input class="myButton" type="button" value="Commenter"
									onClick="document.location.href='fiche_detaillee?id=${biere.id}#article_commentaire'">
								<input class="myButton" TYPE=button VALUE="Fiche détaillée"
									onClick="document.location.href='fiche_detaillee?id=${biere.id}'" />
								<img src='images/delete.png' title="Supprimer"
									id="biere_${biere.id}" class="bouton_supprimer" />
							</div>
						</div>
					</c:forEach>

				</div>

				<div id="div_btn_lien_formulaire">
					<input class="btn_submit" TYPE=button VALUE="Ajouter une bière"
						onClick="document.location.href='formulaire'">
				</div>

			</section>

		</section>

		<!-- Footer -->
		<c:import url="footer.jsp">

		</c:import>

	</div>
</body>
</html>
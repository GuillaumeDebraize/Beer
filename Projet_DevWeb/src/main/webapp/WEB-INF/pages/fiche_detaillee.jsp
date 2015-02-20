<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="mod-com-design.css">
<head>
<meta charset="utf-8">
<title>Beer - Fiche détaillée</title>
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

		<section id="section_principale">
			<aside>
				<h1>La bière, en détail...</h1>
				<img src="images/bulle.png" alt="" id="fleche_bulle" />
				<div id="photo_homer"></div>
				<p>Tooo ! Moi c'est Homer, fervent défenseur de la bière Duff.</p>
				<p>Voici toutes les informations nécessaires pour que tu
					découvres cette bonne bière !</p>
				<p>Je suis aussi présent sur les réseaux sociaux que tu connais
					bien ;)</p>

				<p id="les_logos">
					<img src="images/white_facebook.png" alt="Facebook" /> <img
						src="images/white_twitter.png" alt="Twitter" /> <img
						src="images/white_vimeo.png" alt="Vimeo" /> <img
						src="images/white_pinterest.png" alt="Pinterest" /> <img
						src="images/white_rss.png" alt="RSS" />
				</p>
			</aside>

			<section id="section_secondaire">
				<article id="article_biere">
					<h1>${biere.nom}</h1>

					<div id="la_photo_en_grand">
						<img src="${biere.url}">
					</div>
					<div id="detail_biere">
						<table class="tab_detail">
							<tr>
								<td>Origine</td>
								<td>: ${biere.origine}</td>
							</tr>

							<tr>
								<td>Couleur</td>
								<td>: ${biere.couleur.nom}</td>
							</tr>
							<tr>
								<td>Degré</td>
								<td>: ${biere.degre}°</td>
							</tr>
							<tr>
								<td>Note</td>
								<td>: ${biere.note}/5</td>
							</tr>
						</table>

						<table class="tab_detail">
							<tr>
								<td>Fermentation</td>
								<td>: ${biere.fermentation}</td>
							</tr>
							<tr>
								<td>Brasserie</td>
								<td>: ${biere.brasserie}</td>
							</tr>
						</table>
					</div>
					<div id="description_biere">
						<h2>Description de la bière :</h2>
						<p>${biere.description}</p>

					</div>

				</article>

				<article id="article_commentaire">
					<h1>Commentaires</h1>
					<table id="tableau_commentaires">
						<tr>
							<th class="internaute">Internautes</th>
							<th class="commentaire">Commentaires</th>
						</tr>
						<c:forEach var="coms" items="${listeCommentaires}">
							<tr>
								<td>${coms.pseudo}</td>
								<td>${coms.com}</td>
							</tr>
						</c:forEach>

					</table>
					<form id="formulaire_ajout_com" method="post" role="form">
						<fieldset>
							<legend>Vos commentaires</legend>
							<ol>
								<li><label for="pseudoForm">Pseudo</label> <input
									id="pseudoForm" placeholder="Roger"></li>

								<li><label for="commentaireForm">Commentaire</label> <textarea
										id="commentaireForm" rows=10></textarea></li>
							</ol>
							<input type="hidden" id="idBiereForm" value="${biere.id}">
							<fieldset class="bloc_btn" id="bloc_btn_commenter">
								<button class="btn_submit" id="btn_commenter">Commenter !</button>
							</fieldset>

						</fieldset>
					</form>
				</article>
			</section>
		</section>

		<!-- Footer -->
		<c:import url="footer.jsp">

		</c:import>

	</div>
</body>
</html>
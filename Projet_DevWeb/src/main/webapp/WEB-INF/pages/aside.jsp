<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<aside>
	<h1>CATEGORIES</h1>
	<hr>
	<img src="images/bulle.png" alt="" id="fleche_bulle" />
	<nav id="liste_categories">
		<ul>
			<li><a href="liste_biere" class="selection_couleur">toutes
					les bières</a></li>
			<c:forEach var="couleur" items="${listeCouleurs}">
				<li><a href="liste_biere_categorie?id=${couleur.id}"
					class="selection_couleur">bières ${couleur.nom}s</a></li>
			</c:forEach>
		</ul>
	</nav>

	<div id="logo_capsule">
	</div>

	<p id="les_logos">
		<img src="images/white_facebook.png" alt="Facebook" /> <img
			src="images/white_twitter.png" alt="Twitter" /> <img
			src="images/white_vimeo.png" alt="Vimeo" /> <img
			src="images/white_pinterest.png" alt="Pinterest" /> <img
			src="images/white_rss.png" alt="RSS" />
	</p>
</aside>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<link rel="stylesheet" type="text/css" href="css/style.css">
<head>
<meta charset="utf-8">
<title>Beer - Infos légales</title>
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

		<section id="infos_legales">
			<h1>Infos légales</h1>
			<p>
				Merci de lire attentivement les conditions d'utilisation ci-après
				qui s'appliquent à  chaque utilisateur du site internet www.beer.com.
			</p>
			<p>
				La consultation de ce site internet implique l'acceptation
				implicite des conditions d'utilisation suivantes :
			</p>

			<h2>Contenu du site</h2>
			<hr id="separateur3">
			<p>
				Beer fournit les informations diffusées sur le site www.beer.com à 
				des fins purement informatives et promotionnelles.
			</p>
			<p>	
				Beer s'efforce
				d'assurer, au mieux de ses possibilités, l'exactitude et la mise à 
				jour des informations diffusées sur le site, dont elle se réserve le
				droit de corriger, à  tout moment et sans préavis, le contenu.
				Toutefois, Beer ne peut garantir l'exactitude, la précision, la mise
				à  jour ou l'exhaustivité des informations mises à  la disposition
				sur le site www.beer.com.
			</p>

			<h2>Liens externes</h2>
			<hr id="separateur3">
			<p>
				Le site www.beer.com peut inclure des liens vers des sites tiers sur
				le réseau Internet. Beer ne peut contrôler la nature ou le contenu
				des ressources constituées par ces sources externes. 
			</p>
			<p>
				En conséquence, la responsabilité de Beer ne saurait être engagée au
				titre d'un site tiers auquel l'utilisateur aura accès via le site
				www.beer.com.
			</p>
			<p>	
				De surcroît, l'existence d'un lien entre le site et
				un site tiers ne signifie en aucun cas que Beer approuve à quelque
				titre que ce soit le contenu de ce site et a fortiori l'usage qui
				pourrait en être fait.
			</p>

			<h2>Beer</h2>
			<hr id="separateur3">
			<p>
				Beer - Guillaume Debraize
			</p>
			<p>
				13, rue Adolphe - 59000 Lille
			</p>

		</section>

		<!-- Footer -->
		<c:import url="footer.jsp">

		</c:import>

	</div>
</body>
</html>
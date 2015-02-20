$(document).ready(function(){
	//Demande confirmation de la suppression d'une bière
    $(".bouton_supprimer").on('click', function(){
    confirm("Êtes-vous sûr de vouloir supprimer cette bière ?");

});

    //Un peu de JS sur la page du formulaire
    //Un élément du formulaire est caché et se dévoile si l'on choisi l'option bière alcoolisée
    function toggleElement(){
		$("#toHide").slideDown();
	}
	$("#alcoolisee").click(toggleElement);
	//Un élément du formulaire se cache si l'on choisi finalement l'option bière non alcoolisée
	function toggleElement2(){
		$("#toHide").slideUp();
	}
	$("#non_alcoolisee").click(toggleElement2);

	//Demande confirmation de l'ajout d'une bière
	$("#bloc_btn_ajouter .btn_submit").on('click', function(){
    confirm("Êtes-vous sûr de vouloir ajouter la bière \""+$("#nom").val()+"\"?");
});
	//Info sur le bouton commenter
	$(".myButton").on('click', function(){
    alert("Le module de commentaire sera réalisé en php et disponible dans la deuxième partie du projet !");
});

	//Info sur le lien plan du site
	$( "#plan_du_site" ).click(function() {
  	alert("Désolé ce lien ne mène nulle part car j'ai eu la flemme de faire une page décrivant le plan du site...");
});

});

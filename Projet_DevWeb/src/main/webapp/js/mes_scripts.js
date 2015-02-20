var supprimerBiere = function(idBiere) {
	$.ajax({
				url : "supprimerBiere",
				type : 'GET',
				data : {id : idBiere},
				success : function(data, texStatus, xhr) {
					$("#biere_" + idBiere).remove();
				},
				error : function(xhr, textStutus, errorThrown) {
					console
							.log("Erreur lors de la requete de suppression d'une bière");

				}
			})
};

var updateAfterAjout = function(commentaireAjoute){
	/*
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
	 */
	$("#tableau_commentaires").append($("<tr></tr>")
									.append($("<td></td>")
											.text(commentaireAjoute.pseudo))
									.append($("<td></td>")
											.text(commentaireAjoute.com))
									);
}



$(document).ready(function(){
	
	// Info sur le lien plan du site
	$("#plan_du_site").on('click', function(){
		alert("Désolé ce lien ne mène nulle part car j'ai eu la flemme de faire une page décrivant le plan du site...");
	});
	
	
	// Demande confirmation de la suppression d'une bière
    $(".bouton_supprimer").on('click', function(){
    	var r = confirm("Êtes-vous sûr de vouloir supprimer cette bière ?");
    	if (r == true) {
    		var idBiere = this.id.substring(6);
    	   	supprimerBiere(idBiere);
    	} else {
    	    
    	}
    
	});
    
    
    // Ajout d'un commentaire en ajax
    $("#btn_commenter").click(function(event) {
		  $.ajax({
			 url:"ajouterCommentaire",
			 type:"POST",
			 dataType:"json",
			 data:{
				 pseudo : $("#pseudoForm").val(),
				 commentaire : $("#commentaireForm").val(),
				 id : $("#idBiereForm").val(),
			 },
			 success:function(commentaireAjoute, textStatus, xhr){
				updateAfterAjout(commentaireAjoute);
				
			}
		  });
		  event.preventDefault(); //Permet d’interrompre le submit
			$("#formulaire_ajout_com")[0].reset();
		
	});
    
    
    // Un peu de JS sur la page du formulaire
    // Un élément du formulaire est caché et se dévoile si l'on choisi l'option
	// bière alcoolisée
    function toggleElement(){
		$("#toHide").slideDown();
	}
	$("#alcoolisee").click(toggleElement);
	// Un élément du formulaire se cache si l'on choisi finalement l'option
	// bière non alcoolisée
	function toggleElement2(){
		$("#toHide").slideUp();
	}
	$("#non_alcoolisee").click(toggleElement2);

	// Demande confirmation de l'ajout d'une bière
	$("#btn_submitForm").click(function(){
		alert("Félicitation ! Vous avez ajouté la bière \""+$("#nom").val()+"\"");
	});

});

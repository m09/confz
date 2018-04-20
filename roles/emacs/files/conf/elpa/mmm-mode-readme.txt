<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>

<!--
  <link rel="shortcut icon" type="image/x-icon" href="http://www.univ-nantes.fr/images/favicon.ico" />
  <link rel="icon" type="image/png" href="http://www.univ-nantes.fr/images/favicon.png" />
-->
            
  <link rel="stylesheet" href="css/styles.css" type="text/css">
  <link rel="stylesheet" href="css/scrollable.css" type="text/css">  
  <link rel="stylesheet" href="css/rss.css" type="text/css">  
  <!-- <script src="http://cdn.jquerytools.org/1.1.2/all/jquery.tools.min.js"></script> -->
  <script src="scripts/jquery.tools.min.js"></script>
  <script src="scripts/jquery.color.js"></script>
  <script src="scripts/cookies.js"></script>
  
  <!-- checkboxes -->
  <link rel="stylesheet" href="scripts/jquery-checkbox.1.3.0b1/jquery.checkbox.css" />
  <script type="text/javascript" src="scripts/jquery-checkbox.1.3.0b1/jquery.checkbox.min.js"></script>

  
  <link rel="stylesheet" href="scripts/jquery-virtualkb/jquery.keypad.css">
  <script type="text/javascript" src="scripts/jquery-virtualkb/jquery.keypad.js"></script>
  <script type="text/javascript" src="scripts/jquery-virtualkb/jquery.keypad-fr.js"></script>
  <script type="text/javascript" src="scripts/sexy-tooltips-1.1/jquery/js/sexy-tooltips.v1.1.jquery.js"></script>
  <link rel="stylesheet" href="scripts/sexy-tooltips-1.1/jquery/js/sexy-tooltips/vista.css" type="text/css" media="all"/>
</head>
<body>
  <div id="content">
    <div id="logindiv">
      <div id="title">Portail Wifi de l&#39;Universit&eacute; de Nantes</div>
      <div class="container">
                
        <div id="leftcell">

          <form method="POST">
            <fieldset>
              <p>
                <label>Identifiant</label>
                <input type="text" id="login" name="username"/>
              </p>
              <p>
                <label>Mot de passe</label>
                <input type="password" id="pwd" name="password" autocomplete="off"/>
              </p>
              <p>
                <div class="container">
                  <div class="leftformcell">
                    <span id="acceptlabel" class="innerformcell"><small>J'ai <b>pris connaissance</b> de la <a href="http://eduroam.univ-nantes.fr/charte/charte_fr.pdf" title="Charte d'utilisation">charte d'utilisation</a> et <b>j'en accepte</b> les termes</small></span>
                  </div>
                  <div class="rightformcell">
                    <input type="checkbox" name="agree" id="agree" onclick="if(!$.browser.msie || parseInt($.browser.version) < 6) {  var j = $('#submit').attr('disabled', $('#submit').attr('disabled') ? false : true) }">
                  </div>
                </div>
              </p>
              <p>
                <input id="submit" name="login" type="submit" value="Se Connecter">
              </p>
            </fieldset>
          </form>
        </div>
        <div id="rightcell">
          <div id="eduroam"><br/>
		Le r&eacute;seau sans fil <b>eduroam</b> vous offre une <b>s&eacute;curit&eacute; accrue</b> et des services plus nombreux. Il est librement utilisable par les &eacute;tudiants et personnels de l'Universit&eacute; en lieu et place du r&eacute;seau univ-nantes.
		<div class="more"><br><a href="http://eduroam.univ-nantes.fr" title="eduroam">&raquo; en savoir plus</a></div>
		<br clear="all"/><br />
		<div id="help">
                  <input type="submit" value="Besoin d'aide ?" onclick="window.open('http://wiki.univ-nantes.fr/doku.php?id=wifi:documentation:le_guide_de_l_utilisateur','new_window')">
              </div>
          </div>
        </div>
      </div> <!-- fin container -->
      <br clear="all" />
<!--[if gte IE 7]><!-->
      <div id="ticker">
        <a class="prevPage left"></a>
        <div class="scrollable">
          <div class="items">
                <div class="rss_item">
                  <a href="http://www.univ-nantes.fr/1358238280425/0/fiche___actualite/">
                    <table style="width:272px; height:80px;"><tr>
                        <td class="rss_vignette"><img src="https://www.univ-nantes.fr/images/photo_liste_defaut.gif" alt="vignette" /><p>Le département Gestion des Entreprises et des Administrations de Nantes (GEA) organise une demi-journée "Poursuite d'études".</p></td>
                        <!-- <td class="rss_content">Demi-journée &quot;Poursuite d'études&quot; pour les étudiants en DUT GEA</td> -->
                        <td class="rss_content">Demi-journée &quot;Poursuite d'études&quot; pour les étudiants en DUT GEA</td>
                    </tr></table>
                  </a>
                </div>
                <div class="rss_item">
                  <a href="http://www.univ-nantes.fr/1358242573882/0/fiche___actualite/">
                    <table style="width:272px; height:80px;"><tr>
                        <td class="rss_vignette"><img src="https://www.univ-nantes.fr/images/photo_liste_defaut.gif" alt="vignette" /><p></p></td>
                        <!-- <td class="rss_content">L'Université de Nantes recrute un(e) Technicien(ne) informatique. Offre Pôle Emploi 001QFJW</td> -->
                        <td class="rss_content">L'Université de Nantes recrute un(e) Technicien(ne) informatique. Offre Pôle Emploi 001...</td>
                    </tr></table>
                  </a>
                </div>
                <div class="rss_item">
                  <a href="http://www.univ-nantes.fr/1358241428512/0/fiche___actualite/">
                    <table style="width:272px; height:80px;"><tr>
                        <td class="rss_vignette"><img src="https://www.univ-nantes.fr/images/photo_liste_defaut.gif" alt="vignette" /><p></p></td>
                        <!-- <td class="rss_content">Conférence à 14h30 : Anne-Laure GILET &quot;Emotions et vieillissement&quot;</td> -->
                        <td class="rss_content">Conférence à 14h30 : Anne-Laure GILET &quot;Emotions et vieillissement&quot;</td>
                    </tr></table>
                  </a>
                </div>
                <div class="rss_item">
                  <a href="http://www.univ-nantes.fr/1358240464881/0/fiche___actualite/">
                    <table style="width:272px; height:80px;"><tr>
                        <td class="rss_vignette"><img src="https://www.univ-nantes.fr/images/photo_liste_defaut.gif" alt="vignette" /><p></p></td>
                        <!-- <td class="rss_content">Conférence à 14h30 : François-Xavier VRAIT &quot;Musique et médecine : évolutions de la musicothérapie dans l'histoire&quot;</td> -->
                        <td class="rss_content">Conférence à 14h30 : François-Xavier VRAIT &quot;Musique et médecine : évolutions de la...</td>
                    </tr></table>
                  </a>
                </div>
                <div class="rss_item">
                  <a href="http://www.univ-nantes.fr/1358165661301/0/fiche___actualite/">
                    <table style="width:272px; height:80px;"><tr>
                        <td class="rss_vignette"><img src="https://www.univ-nantes.fr/images/photo_liste_defaut.gif" alt="vignette" /><p>Lycéens ou étudiants : savez-vous que l'Université de Nantes propose des formations dans des secteurs très diversifiés et présentant un large panel de métiers ? Venez les découvrir sur notre stand, du vendredi 25  au dimanche 27 janvier 2011, à l'occasion du salon Formathèque. L'Université de Nantes animera également plusieurs conférences. Entrée libre et gratuite.</p></td>
                        <!-- <td class="rss_content">Rencontrez l'Université de Nantes au salon Formathèque 2013</td> -->
                        <td class="rss_content">Rencontrez l'Université de Nantes au salon Formathèque 2013</td>
                    </tr></table>
                  </a>
                </div>
                <div class="rss_item">
                  <a href="http://www.univ-nantes.fr/1358240540776/0/fiche___actualite/">
                    <table style="width:272px; height:80px;"><tr>
                        <td class="rss_vignette"><img src="https://www.univ-nantes.fr/images/photo_liste_defaut.gif" alt="vignette" /><p>Pour une poétique de l'intime</p></td>
                        <!-- <td class="rss_content">Bruno DOUCEY &quot;La vie est chaude&quot; Rencontre avec Dominique Sampiero</td> -->
                        <td class="rss_content">Bruno DOUCEY &quot;La vie est chaude&quot; Rencontre avec Dominique Sampiero</td>
                    </tr></table>
                  </a>
                </div>
                <div class="rss_item">
                  <a href="http://www.univ-nantes.fr/1358241156665/0/fiche___actualite/">
                    <table style="width:272px; height:80px;"><tr>
                        <td class="rss_vignette"><img src="https://www.univ-nantes.fr/images/photo_liste_defaut.gif" alt="vignette" /><p></p></td>
                        <!-- <td class="rss_content">Conférence à 14h30 : Gildas SALAUN &quot;L'emblématique des Ducs de Bretagne&quot;</td> -->
                        <td class="rss_content">Conférence à 14h30 : Gildas SALAUN &quot;L'emblématique des Ducs de Bretagne&quot;</td>
                    </tr></table>
                  </a>
                </div>
                <div class="rss_item">
                  <a href="http://www.univ-nantes.fr/1328000312229/0/fiche___actualite/">
                    <table style="width:272px; height:80px;"><tr>
                        <td class="rss_vignette"><img src="https://www.univ-nantes.fr/images/photo_liste_defaut.gif" alt="vignette" /><p>En partenariat avec l'Université de Nantes, l'établissement français du sang organise une collecte... et si vous aussi vous donniez votre sang?</p></td>
                        <!-- <td class="rss_content">Don du sang à la Faculté des Sciences</td> -->
                        <td class="rss_content">Don du sang à la Faculté des Sciences</td>
                    </tr></table>
                  </a>
                </div>
                <div class="rss_item">
                  <a href="http://www.univ-nantes.fr/1358243671401/0/fiche___actualite/">
                    <table style="width:272px; height:80px;"><tr>
                        <td class="rss_vignette"><img src="https://www.univ-nantes.fr/images/photo_liste_defaut.gif" alt="vignette" /><p>Soutenance HDR</p></td>
                        <!-- <td class="rss_content">Fabrice DENES</td> -->
                        <td class="rss_content">Fabrice DENES</td>
                    </tr></table>
                  </a>
                </div>
                <div class="rss_item">
                  <a href="http://www.univ-nantes.fr/1358166715977/0/fiche___actualite/">
                    <table style="width:272px; height:80px;"><tr>
                        <td class="rss_vignette"><img src="https://www.univ-nantes.fr/images/photo_liste_defaut.gif" alt="vignette" /><p>L’Université de Nantes, le Centre Hospitalier Universitaire de Nantes (CHU) et Aviesan (Alliance Nationale pour les Sciences de la Vie et de la Santé) ont labellisé deux Départements Hospitalo-Universitaires (DHU) dans le cadre d’un appel à projets lancé en juin 2012.</p></td>
                        <!-- <td class="rss_content">Labellisation de deux Départements Hospitalo-Universitaires (DHU)</td> -->
                        <td class="rss_content">Labellisation de deux Départements Hospitalo-Universitaires (DHU)</td>
                    </tr></table>
                  </a>
                </div>
          </div> <!-- fin items -->
        </div> <!-- fin scrollable -->
        <a class="nextPage right"></a>
      </div> <!-- fin ticker -->

      <br clear=all />
<!--<![endif]-->
    </div>
    <div id="logo">
      <img src="images/logoUniv.png" alt="logo Universit&eacute;">
    </div>
  </div>
<!--[if gte IE 7]><!-->  
   <script type="text/javascript" src="scripts/wifi.js"></script>
<!--<![endif]-->
     
</body>
</html>

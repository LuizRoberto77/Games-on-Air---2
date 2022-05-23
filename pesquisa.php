<!DOCTYPE html>
<?php
	include_once('connect.php');
	$pesq = $_GET["pesquisar"];
?>	
<html lang="pt-br">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8"> 
	<title>pesquisa por: '<?php echo $pesq; ?>' - Games on Air</title>
	<!-- ↓-Especifica a descição do site  -->
	<meta name="description" content="Site de Games com ênfase nas noticias,reviews e dicas">
	<!-- ↓-São as palavras chaves do site que ajuda o Motor de busca a encontrar o site obs:o Google não usa mais essa ferramenta, o bing sim  -->
	<meta name="keywords" content="Games, Reviews, Notícias, Dicas">
	<!-- ↓-O Robots é usado para nao mostrar a página em pesquisas do motor de busca -->
	<meta name="robots" content="all">
	<!-- ↓-Especifica o autor do Site -->
	<meta name="author" content="Games on air Corporation">
	<!-- ↓-CSS e o icone da página -->
	<link rel="stylesheet" type="text/css" href="css/estilo.css">
	<link rel="icon" href="img/icon2.png">
	<!-- ↓-JavaScript -->
	<script src="js/jquery.js"></script>
	<!-- ↓-Bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="bootstrap-4.0.0-beta.2-dist/css/bootstrap.min"></script>
	<!-- ↓-Font Awesome-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Francois+One" rel="stylesheet">
    <!--Normalize-->
    <link rel="stylesheet" type="text/css" href="css/normalize.css">

	<style type="text/css">
		
		/*código css referente ao conteúdo da página aqui*/

	</style>
</head>
<body>
<div id="wrap">
	
		<div id="header">
			<!-- ↓Logo -->
			<a href="Pagina_Principal.php"><span><img src="img/Control2.png" alt="Logo Games on Air" ></span></a>
		</div>	
		<div id="background">
		<!-- ↓Menu -->
		<nav id="menu">
			<ul>
				<li class="lista-menu"><a href="Pagina_Principal.php"  class="texto-menu"><span>
				Home</span></a></li>
				<li class="lista-menu"><a href="#2" class="texto-menu"><span>Notícias</span></a></li>
				<li class="lista-menu"><a href="#3" class="texto-menu"><span>Reviews</span></a></li>
				<li class="lista-menu"><a href="#4" class="texto-menu"><span>Dicas</span></a></li>
				<li class="lista-menu5"><a href="#5" class="texto-menu"><span>Quem somos</span></a></li>
			</ul>
			<form class="bp" action="pesquisa.php" method="get">
			<div class="input-group add-on">
				<input class="form-control" name="pesquisar" placeholder="Pesquisar..." id="srch-term" type="text" maxlength="50">
      			<div class="input-group-btn">
        			<button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
    			</div>
    		</div>	
			</form>
		</nav>
		<form action="Noticia.php" method="get">
		<!-- ↓Conteudo  -->
		<div id="conteudo">
			<?php
			
			echo "<div id='title-pesquisa'>";
				if($pesq==""){
					echo"<h1>Resultado da procura por '...'</h1>";
				}else{
					echo"<h1>Resultado da procura por '".$pesq."'</h1>";
				}
			echo "</div>";
			?>
			<?php
				
				$sql2 = "SELECT * FROM `noticia` where Titulo like '%".$pesq."%' or descricao like '%".$pesq."%' or conteudo like '%".$pesq."%' ORDER by `data` desc;";
		    		$result = $conn->query($sql2);
		    		if ($result->num_rows > 0) {
						while($row = $result->fetch_assoc()){
							echo "<div class='noticia-home'>
						<img src='".$row["imagem"]."' alt='".$row["Titulo"]."'> 
						<!-- ↓conteudo da noticia -->
						<article class='noticia-home-cont'>";
							$date= date_create($row["data"]);
							echo date_format($date,'<p>d/m/y<p>');
							echo "<h2>".$row["Titulo"]."</h2>
							<h4>".$row["descricao"]."</h4>";
							echo nl2br("<div class='hidden-xs'><p class='textm'> ".$row["conteudo"]."</p></div>");
							echo"<button class='notcarousel' type='submit' name='idn' value=".$row["Idnoticia"].">Para ler a matéria clique aqui!</button>	
						</article>
						</div>";
						}
					}else{
						echo "<h1 class='ops'>Ops...'".$pesq."' non ecziste!!! :(</h1>";
						
					}


			?>
		</div>	
		</form>
		
		<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>

		<script>
			function truncateText(selector, maxLength) {
	    var element = document.querySelector(selector),
	        truncated = element.innerText;

	    if (truncated.length > maxLength) {
	        truncated = truncated.substr(0,maxLength) + '...';
	    }
	    return truncated;
		}
		document.querySelector('p').innerText = truncateText('p', 107);

		</script>
	</div>	
	<!-- ↓Rodapé -->
	<footer>
			<h3 class="rodape">Copyright © Games on Air 2018. Todos os direitos reservados.</h3> 
	</footer>
</div>
</body>
</html>
extends Node2D

func _process(delta):
	if Classglobal.Scene == "Cena 1" and Classglobal.n_artefatos == 1:
		$TabContainer/Artefato_1/RichTextLabel.text = 'Duas principais áreas que englobam a engenharia de computação. Logo de início, é importante ressaltar que a Engenharia de Computação é um curso muito extenso e abrangente, o que permite diferentes atuações. Esse bacharelado oferece uma formação muito completa, que engloba duas principais áreas: a ciência da computação e a engenharia elétrica, que representam predominantemente, o desenvolvimento de software (programas, aplivativos) e de hardware (sistemas físicos), respectivamente.'
	if Classglobal.Scene == "Cena 1" and Classglobal.n_artefatos == 2:
		$TabContainer/Artefato_2/RichTextLabel.text = "Uma possível área de atuação de um engenheiro de computação. Você já viu que um engenheiro de computação conhece bastante de hardware a software. Por isso, dentre os quatro cursos de bacharelado na computação, o engenheiro de computação é aquele que terá o melhor preparo para trabalhar com robótica, que é uma área que envolve engenharia, a computação e a eletricidade. E aí, já pensou em construir e programar um robô para destruir essas slimes verdes que vem por ai?"
	if Classglobal.Scene == "Cena 1" and Classglobal.n_artefatos == 3:
		$TabContainer/Artefato_3/RichTextLabel.text = "O que você encontrará na gradução? Um dos conteúdos mais conhecidos e clássicos da engenharia de computação é o que aborda os sistemas embarcados. Não se assuste pelo nome, irei te explicar. Esses sistemas são uma combinação de hardware (parte física do sistema) e software (a mente do sistema) que são designados para cumprir alguma função específica. É como se fosse um computador que possui uma única função. Na vida real, vemos que esses sistemas vão desde um controle remoto até os computadores de bordo de aeronaves e de satélites e pilotos automáticos de automóveis."
	if Classglobal.Scene == "Cena 1" and Classglobal.n_artefatos == 4:
		$TabContainer/Artefato_4/RichTextLabel.text = "Ciências humanas na Engenharia? Um engenheiro, mais do que outros profissinais da computação, precisa diariamente lidar com questões éticas e morais. Esse profissional na maioria das vezes está envolvido com problemas do dia a dia, que impactam diretamente ou indiretamente a sociedade. Desse modo, um engenheiro da computação têm de ter como base a ética e a moral para tomar decisões, pois essas podem  causar grandes impactos no mundo. Fique tranquilo, você não aprenderá sobre os componentes químicos das rochas ou sobre a colonização americana, mas obterá bases para tomar decisões de maneira correta."
	if Classglobal.Scene == "Cena 1" and Classglobal.n_artefatos == 5:
		$TabContainer/Artefato_5/RichTextLabel.text = "Como é o mercado de trabalho para essa profissão? Essa parte é bem atrativa. É fato que a sociedade se aprofunda dia após dia no mundo digital, e um dos atores que possibilitam isso são os engenheiros da computação. Por isso, esse é um profissional cada vez mais requisitado, em todos os setores que englobam a sociedade, desde a área de telecomunicações até a indústria automobilística e aeronáutica. Se você pensa em seguir nessa área, oportunidades não irão faltar!"


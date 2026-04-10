local M = {}

M.strings = {
	play = "GIOCA",
	credits = "CREDITI",
	exit = "ESCI",
	label_username = "Utente:",
	label_password = "Password:",
	insert_user = "Inserisci Utente",
	insert_pass = "Inserisci Password",
	login = "ACCEDI",
	register = "REGISTRATI",
	back = "INDIETRO",
	debug_access = "ACCESSO DEBUG",
	close = "CHIUDI",
	school_guide = [[
	BENVENUTO A SCUOLA!

	Preparati a stimolare la tua mente e a diventare un campione della sostenibilita'!

	Guadagna Punti Conoscenza: Supera i nostri quiz a scelta multipla e Vero/Falso per accrescere la tua saggezza e aumentare il tuo punteggio.
	Supporta il tuo Compagno: Usa i tuoi Punti Conoscenza per fornire pasti nutrienti e premi speciali al tuo Yeti.
	Diventa un Esperto: Trasforma il successo nei quiz in un impatto reale! Impara i segreti della scienza alimentare e aiuta a eliminare gli sprechi.

	Studia sodo, gioca d'astuzia e facciamo la differenza!
	]],
	quiz_finished = "Quiz Finito! Salvataggio...",
	saving = "Salvataggio in corso...",

	-- DOMANDE
	q1 = "Qual e' l'impronta idrica di 1 kg di carne bovina?",
	q1_a1 = "150000 litri", q1_a2 = "15000 litri", q1_a3 = "1500 litri", q1_a4 = "150 litri",

	q2 = "Circa quale percentuale di tutto il cibo prodotto a livello globale viene persa o sprecata?",
	q2_a1 = "5%", q2_a2 = "15%", q2_a3 = "33%", q2_a4 = "60%",

	q3 = "Vero o Falso: I cibi surgelati hanno generalmente una perdita di nutrienti maggiore rispetto ai prodotti freschi sugli scaffali.",
	q3_a1 = "Vero", q3_a2 = "Falso",

	q4 = "Qual e' il modo piu' efficace per ridurre lo spreco alimentare a casa?",
	q4_a1 = "Comprare all'ingrosso", q4_a2 = "Pianificazione pasti e liste della spesa", q4_a3 = "Conservare i prodotti al sole", q4_a4 = "Gettare il cibo alla data 'vendere entro'",

	q5 = "Qual e' la differenza tra le date 'Da consumare entro' e 'Da consumarsi preferibilmente entro'?",
	q5_a1 = "Significano la stessa cosa", q5_a2 = "'Entro' riguarda la sicurezza; 'Preferibilmente' la qualita'", q5_a3 = "'Preferibilmente' riguarda la sicurezza; 'Entro' la qualita'", q5_a4 = "Sono suggerimenti e possono essere ignorati",

	q6 = "Quale gas viene prodotto quando il cibo marcisce in discarica, contribuendo al cambiamento climatico?",
	q6_a1 = "Ossigeno", q6_a2 = "Azoto", q6_a3 = "Metano", q6_a4 = "Elio",

	q7 = "Vero o Falso: La maggior parte dello spreco alimentare nei paesi ad alto reddito avviene a livello di vendita e consumo.",
	q7_a1 = "Vero", q7_a2 = "Falso",

	q8 = "Cos'e' l' 'Upcycling' nel contesto alimentare?",
	q8_a1 = "Buttare via il cibo", q8_a2 = "Coltivare le proprie verdure", q8_a3 = "Creare nuovi prodotti da scarti o sottoprodotti alimentari", q8_a4 = "Usare una bicicletta per la spesa",

	q9 = "Qual e' il posto migliore dove conservare le cipolle per farle durare piu' a lungo?",
	q9_a1 = "In un sacchetto di plastica con le patate", q9_a2 = "In un luogo fresco, asciutto e buio", q9_a3 = "Nel congelatore da crude", q9_a4 = "Su un davanzale soleggiato",

	q10 = "Quale parte della 'Gerarchia dello spreco alimentare' e' l'opzione preferibile?",
	q10_a1 = "Compostaggio", q10_a2 = "Nutrire gli animali", q10_a3 = "Riduzione alla fonte (prevenzione)", q10_a4 = "Smaltimento in discarica",

	q11 = "Vero o Falso: I prodotti ammaccati o 'brutti' sono solitamente nutrienti quanto quelli esteticamente perfetti.",
	q11_a1 = "Vero", q11_a2 = "Falso",

	market_guide = [[
	BENVENUTI ALL'EMPORIO GENERALE!

	Assicurati che il tuo Yeti rimanga in salute e felice mantenendo le scorte piene.

	1. NUTRI IL TUO AMICO: Acquista cibo e prelibatezze. Ricorda che la fame sale verso il 100% (pericolo) e scende verso lo 0% (sazio).
	2. VALUTA: Tutti gli articoli sono prezzati in Punti Conoscenza. Usa la tua saggezza per provvedere allo Yeti!
	3. PREZZI STAGIONALI: I prezzi fluttuano in base alla stagione corrente. Comprare prodotti di stagione conviene e nutre di più!
	4. CONSERVAZIONE REALE: Impara dove conservare i cibi (Frigo vs Scaffale) per farli durare più a lungo.

	--- LA GESTIONE DELLA SCADENZA ---
	Ogni cibo nell'inventario mostra il suo stato tramite il colore del bottone:
	- VERDE (Fresco): Massima efficacia! Riduce molta fame e aumenta il Mood.
	- ARANCIONE (Da consumare): Qualità ridotta. Sazia la metà e peggiora leggermente il Mood.
	- ROSSO (Avariato): ATTENZIONE! Se lo mangia, la fame AUMENTA (+15) e il Mood crolla. Lo Yeti starà male!
	]],
	inventory_full = "INVENTARIO PIENO! Mangia qualcosa prima.",
	buy_btn = "COMPRA",
	close_btn = "CHIUDI",
	no_description = "Nessuna descrizione disponibile.",
	next_btn = "PROSSIMO",
	prev_btn = "PRECEDENTE",

	-- ================= FRIDGE =================
	cake_cheese = "Cheesecake",
	cake_cheese_desc = "Una torta cremosa al formaggio, tipica dei diner americani.",
	cake_chocolate = "Torta al Cioccolato",
	cake_chocolate_desc = "Una fetta di torta ricca di cacao, amata in tutto il mondo.",

	coffee_espresso = "Caffe' Espresso",
	coffee_espresso_desc = "Il re del bar italiano: corto, forte e con la schiumina.",
	coffee_mocha = "Mocaccino",
	coffee_mocha_desc = "Un mix perfetto di caffe', latte e cioccolato.",
	coffee_darkroast = "Caffe' Tostatura Scura",
	coffee_darkroast_desc = "Caffe' dal sapore intenso e deciso.",
	coffee_mediumroast = "Caffe' Tostatura Media",
	coffee_mediumroast_desc = "Equilibrato e profumato, ideale per ogni momento.",
	coffee_lightroast = "Caffe' Tostatura Chiara",
	coffee_lightroast_desc = "Un caffe' leggero con note acide e fruttate.",
	coffee_greentea = "Te' Verde",
	coffee_greentea_desc = "Bevanda salutare e rinfrescante ricca di antiossidanti.",

	soda_coke = "Coca",
	soda_coke_desc = "La bibita americana piu' famosa, fresca e frizzante.",
	soda_fanta = "Aranciata",
	soda_fanta_desc = "Bibita frizzante al gusto d'arancia.",
	soda_pepsi = "Pepsi",
	soda_pepsi_desc = "Una rinfrescante alternativa alla cola classica.",
	soda_sprite = "Sprite",
	soda_sprite_desc = "Bibita limpida al gusto di limone e lime.",

	popsicle_blue = "Ghiacciolo Blu",
	popsicle_green = "Ghiacciolo Verde",
	popsicle_pink = "Ghiacciolo Rosa",
	popsicle_red = "Ghiacciolo Rosso",
	popsicle_yellow = "Ghiacciolo Giallo",
	popsicle_desc = "Uno snack ghiacciato per rinfrescare lo Yeti!",

	fruit_apple_slice = "Fetta di Mela",
	fruit_apple_slice_desc = "Mela gia' tagliata, pronta per uno spuntino veloce.",
	fruit_orange_slice = "Fetta d'Arancia",
	fruit_orange_slice_desc = "Una dose di vitamina C gia' pronta.",
	fruit_watermelon_slice = "Fetta d'Anguria",
	fruit_watermelon_slice_desc = "Il massimo della freschezza estiva.",
	rosti = "Rosti",
	rosti_desc = "Specialita' svizzera di patate grattugiate e dorate in padella.",

	eggs_fried = "Uova al Tegamino",
	eggs_fried_desc = "Classica colazione americana proteica.",
	eggs_scrambled = "Uova Strapazzate",
	eggs_scrambled_desc = "Uova morbide e saporite, ottime col bacon.",
	eggs_softboiled = "Uovo alla Coque",
	eggs_softboiled_desc = "Uovo bollito col cuore tenero.",

	cheese_emmental = "Emmental",
	cheese_emmental_desc = "Il classico formaggio svizzero con i buchi.",
	cheese_mozzarella = "Mozzarella",
	cheese_mozzarella_desc = "Formaggio fresco italiano, morbido e lattiginoso.",
	cheese_blue = "Gorgonzola",
	cheese_blue_desc = "Formaggio erborinato dal sapore molto intenso.",
	cheese_camembert = "Camembert",
	cheese_camembert_desc = "Formaggio a pasta molle dalla crosta fiorita.",

	-- ================= SHELF =================
	chestnuts = "Caldarroste",
	chestnuts_desc = "Castagne arrostite sul fuoco, profumo di bosco ticinese.",
	glazed_donut = "Ciambella Glassata",
	glazed_donut_desc = "Il dolce preferito dai poliziotti americani!",
	maple_syrup = "Sciroppo d'Acero",
	maple_syrup_desc = "Nettare dolce canadese, perfetto sui pancake.",
	pancakes = "Pancake",
	pancakes_desc = "Frittelle americane soffici per una colazione da campioni.",
	polenta = "Polenta",
	polenta_desc = "Farina di mais gialla, l'oro della cucina.",
	peanut_butter = "Burro d'Arachidi",
	peanut_butter_desc = "Cremosissimo e proteico. Perfetto da spalmare mentre aspetti un episodio crossover.",

	-- FRUTTA
	fruit_apple = "Mela",
	fruit_apple_desc = "Croccante e succosa, ottima per tenere il medico lontano!",
	fruit_banana = "Banana",
	fruit_banana_desc = "Ricca di potassio e perfetta per una ricarica di energia.",
	fruit_blueberry = "Mirtillo",
	fruit_blueberry_desc = "Piccoli frutti di bosco pieni di antiossidanti.",
	fruit_cherry = "Ciliegia",
	fruit_cherry_desc = "Una tira l'altra! Dolce e rossa come un rubino.",
	fruit_grape_red = "Uva Rossa",
	fruit_grape_red_desc = "Grappoli dolci pronti per essere piluccati.",
	fruit_greengrape = "Uva Bianca",
	fruit_greengrape_desc = "Fresca e zuccherina, ideale come spuntino estivo.",
	fruit_kiwi = "Kiwi",
	fruit_kiwi_desc = "Pieno di vitamina C e con un cuore verde brillante.",
	fruit_lemon = "Limone",
	fruit_lemon_desc = "Aspro e profumato, perfetto per dare un tocco di freschezza.",
	fruit_lime = "Lime",
	fruit_lime_desc = "Il cugino esotico del limone, ideale per bibite rinfrescanti.",
	fruit_orange = "Arancia",
	fruit_orange_desc = "Una spremuta di salute per le tue difese immunitarie.",
	fruit_peach = "Pesca",
	fruit_peach_desc = "Vellutata fuori e dolcissima dentro.",
	fruit_strawberry = "Fragola",
	fruit_strawberry_desc = "Il sapore della primavera in un piccolo frutto rosso.",
	fruit_watermelon = "Anguria",
	fruit_watermelon_desc = "Gigante, dolce e idratante, la regina dell'estate.",

	-- VERDURA
	vegetable_carrot = "Carota",
	vegetable_carrot_desc = "Fa bene alla vista ed e' ottima da sgranocchiare.",
	vegetable_corn = "Mais",
	vegetable_corn_desc = "Chicchi dorati e dolci, perfetti nelle insalate o sulla pannocchia.",
	vegetable_cucumber = "Cetriolo",
	vegetable_cucumber_desc = "Composto quasi solo d'acqua, freschissimo e leggero.",
	vegetable_eggplant = "Melanzana",
	vegetable_eggplant_desc = "Versatile in cucina, ottima grigliata o al forno.",
	vegetable_garlic = "Aglio",
	vegetable_garlic_desc = "Un aroma potente che non puo' mancare in cucina.",
	vegetable_ginger = "Zenzero",
	vegetable_ginger_desc = "Una radice piccante dal sapore unico e salutare.",
	vegetable_jalapeno = "Jalapeno",
	vegetable_jalapeno_desc = "Un peperoncino messicano per chi ama i sapori forti.",
	vegetable_onion = "Cipolla",
	vegetable_onion_desc = "La base di ogni buon soffritto, aggiunge sapore a tutto.",
	vegetable_potato = "Patata",
	vegetable_potato_desc = "L'ingrediente piu' amato al mondo, in ogni sua forma.",
	vegetable_pumpkin = "Zucca",
	vegetable_pumpkin_desc = "Dolce e farinosa, perfetta per le zuppe autunnali.",
	vegetable_tomato = "Pomodoro",
	vegetable_tomato_desc = "Rosso, succoso e fondamentale per una buona pizza.",
	vegetable_bellpepper_green = "Peperone Verde",
	vegetable_bellpepper_green_desc = "Croccante e dal sapore leggermente amarognolo.",
	vegetable_bellpepper_red = "Peperone Rosso",
	vegetable_bellpepper_red_desc = "Il piu' dolce e colorato della famiglia dei peperoni.",
	vegetable_bellpepper_yellow = "Peperone Giallo",
	vegetable_bellpepper_yellow_desc = "Polposo e dolcissimo, ottimo crudo o cotto.",

	-- ULTIMI 5 ITEM
	pastry_baguette = "Baguette",
	pastry_baguette_desc = "Il classico pane francese, lungo e dalla crosta croccante.",
	pastry_bread = "Pane",
	pastry_bread_desc = "L'alimento base per eccellenza, fragrante e genuino.",
	pastry_brioche = "Brioche",
	pastry_brioche_desc = "Un soffice panino dolce, ideale da farcire.",
	pastry_croissant = "Cornetto",
	pastry_croissant_desc = "Sfoglia burrosa e fragrante per una colazione perfetta.",
	pastry_pretzel = "Pretzel",
	pastry_pretzel_desc = "Pane tipico annodato, ricoperto di granelli di sale.",
}

return M
local M = {}

M.strings = {
	play = "GIOCA",
	credits = "CREDITI",
	story = "STORIA",
	label_username = "Utente:",
	label_password = "Password:",
	insert_user = "Inserisci Utente",
	insert_pass = "Inserisci Password",
	login = "ACCEDI",
	register = "REGISTRATI",
	back = "INDIETRO",
	label_coins = "Monete:",
	label_knowledge = "Conoscenza:",
	debug_access = "ACCESSO DEBUG",
	close = "CHIUDI",
	label_best_before = "Consumare preferibilmente entro:",
	label_expiry = "Scadenza tassativa:",
	label_energy = ":",
	storage_fridge = "Conserva in: FRIGO",
	storage_shelf = "Conserva in: SCAFFALE",
	days_left = "giorni rimasti",
	expired = "SCADUTO!",
	label_coins_gained = "MONETE:",
	label_knowledge_gained = "CONOSCENZA:",
	button_exit = "ESCI",
	msg_victory = "HAI VINTO!",
	msg_gameover = "HAI PERSO!",
	button_trash = "BUTTA",
	button_eat = "MANGIA",
	msg_saving = "Salvataggio in corso",
	msg_save_ok = "Gioco Salvato!",
	msg_save_error = "Errore Salvataggio!",
	story_text = "YETI SUSTAINABILITY PROJECT\nIl cibo sprecato sottrae energia alla montagna e danneggia l'equilibrio del villaggio.\n\nMECCANICHE DI GIOCO:\n1. SKI LIFT: Raccogli monete e Punti Conoscenza schivando gli ostacoli.\n2. MOOD SYSTEM: Lo stato emotivo del Yeti influenza la sua fame. Se è furioso, il gioco si blocca.\n3. MARKET: Acquista cibo dai mentor, ma attenzione alla data di scadenza per evitare sprechi.\n4. SCHOOL: Consulta Professor Owl per ottenere Fun Facts e aumentare il tuo livello.\n\nCollabora con i mentor della montagna per salvare il villaggio e nutrire il Yeti in modo sostenibile!",
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

	q12 = "Quale di questi cibi ha l'impatto ambientale piu' basso?",
	q12_a1 = "Manzo", q12_a2 = "Legumi", q12_a3 = "Formaggio", q12_a4 = "Pollo",
	
	q13 = "Vero o Falso: Il 10% delle emissioni globali di gas serra deriva dal cibo sprecato.",
	q13_a1 = "Vero", q13_a2 = "Falso",
	
	q14 = "Cosa significa 'Km 0'?",
	q14_a1 = "Cibo senza calorie", q14_a2 = "Prodotti venduti vicino al luogo di produzione", q14_a3 = "Cibo che non scade mai", q14_a4 = "Prodotti importati via aerea",

	q15 = "Qual e' il principale vantaggio del compostaggio?",
	q15_a1 = "Crea plastica", q15_a2 = "Trasforma scarti organici in fertilizzante", q15_a3 = "Elimina il bisogno di acqua", q15_a4 = "Serve a pulire i pavimenti",

	q16 = "Vero o Falso: Mangiare prodotti locali (Km 0) aiuta a ridurre le emissioni causate dai trasporti.",
	q16_a1 = "Vero", q16_a2 = "Falso",
	
	q17 = "Quale di questi metodi di cottura consuma meno energia?",
	q17_a1 = "Forno elettrico", q17_a2 = "Microonde", q17_a3 = "Bollitura in pentola aperta", q17_a4 = "Frittura",

	q18 = "Cosa indica il simbolo del 'punto verde' (due frecce che si intrecciano) sugli imballaggi?",
	q18_a1 = "Il prodotto e' biologico", q18_a2 = "L'azienda finanzia sistemi di riciclo degli imballaggi", q18_a3 = "Il cibo all'interno e' verde", q18_a4 = "Si puo' mangiare la confezione",

	q19 = "Vero o Falso: La plastica biodegradabile puo' essere gettata ovunque in natura.",
	q19_a1 = "Vero", q19_a2 = "Falso",

	q20 = "Quanti litri d'acqua servono circa per produrre una singola tazza di caffe'?",
	q20_a1 = "1 litro", q20_a2 = "140 litri", q20_a3 = "50 litri", q20_a4 = "500 litri",

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

	-- CONSIGLI DELLA MUCCA (NPC TIPS)
	tip_1 = "Muuu! 'Da consumare preferibilmente entro' (TMC) indica la qualita', non la sicurezza. Se l'aspetto e' buono, non buttarlo!",
	tip_2 = "La data di scadenza 'Scade il' e' per i cibi freschi. Oltre quella data, il rischio di intossicazione e' reale. Muuu!",
	tip_3 = "Fidati dei tuoi sensi! Se un cibo 'Best Before' ha un cattivo odore o muffa, buttalo via anche se la data non e' passata.",
	tip_4 = "Muuu! Congelare i cibi vicino alla scadenza blocca il tempo! Puoi conservarli per mesi in freezer.",
	tip_5 = "Sapevi che il miele non scade mai? E' stato trovato miele commestibile persino nelle tombe egizie! Muuu!",
	tip_6 = "Il ripiano piu' basso del frigo e' il piu' freddo (circa 2 gradi). E' il posto perfetto per carne e pesce crudo!",
	tip_7 = "Muuu! I cassetti in basso servono a mantenere l'umidita' per frutta e verdura. Non metterci i formaggi!",
	tip_8 = "Il latte e le uova non dovrebbero stare nello sportello del frigo: e' la zona soggetta a piu' sbalzi di temperatura.",
	tip_9 = "Non riempire troppo il frigo! L'aria fredda deve poter circolare per mantenere tutto alla giusta temperatura.",
	tip_10 = "Muuu! Aspetta sempre che i cibi caldi si raffreddino prima di metterli in frigo, o scalderai tutto il resto!",
	tip_11 = "Conserva patate e cipolle al buio e al fresco, ma mai insieme! Le cipolle fanno germogliare le patate prima.",
	tip_12 = "Il pane si conserva meglio in un sacchetto di carta o di stoffa. Nel vapore della plastica ammuffisce subito!",
	tip_13 = "Muuu! Olio e vino temono la luce. Tienili in armadietti chiusi per evitare che irrancidiscano.",
	tip_14 = "I legumi secchi durano anni! Sono una fonte di proteine incredibile e molto economica. Muuu!",
	tip_15 = "Se il pacco di biscotti e' aperto, chiudilo bene o usa un barattolo di vetro: l'umidita' dell'aria li rendera' molli.",
	tip_16 = "Muuu! Lavare la carne cruda nel lavandino e' pericoloso: gli schizzi d'acqua diffondono batteri ovunque!",
	tip_17 = "Usa taglieri diversi per carne e verdura. Eviterai la 'contaminazione crociata' dei batteri. Molto importante!",
	tip_18 = "Muuu! Le banane emettono etilene. Se vuoi far maturare in fretta un avocado, mettilo in un sacchetto con una banana!",
	tip_19 = "Le uova si conservano meglio con la punta rivolta verso il basso per mantenere il tuorlo centrato e protetto.",
	tip_20 = "Muuu! Se un cibo ha la muffa, non basta togliere la parte brutta. Le radici della muffa spesso sono gia' ovunque!",
	tip_21 = "Fai la lista della spesa prima di venire da me! Comprare solo cio' che serve e' il primo passo contro lo spreco.",
	tip_22 = "Muuu! Mangia i prodotti di stagione. Sono piu' buoni, costano meno e non devono viaggiare per migliaia di chilometri!",
	tip_23 = "Gli scarti della verdura possono diventare un ottimo brodo! Non buttare via le bucce pulite. Muuu!",
	tip_24 = "Muuu! Ricorda la regola FIFO: First-In, First-Out. Metti davanti i cibi comprati prima per usarli per primi!",
	tip_25 = "Sapevi che un terzo del cibo prodotto nel mondo viene buttato? Ogni piccolo gesto conta per salvare il pianeta!",

	-- CONSIGLI DEL GUFO (OWL TIPS)
	owl_1 = "Uh-uh! Sapevi che produrre un solo hamburger richiede circa 2400 litri d'acqua? Usa i tuoi punti con saggezza!",
	owl_2 = "La sostenibilita' inizia dal carrello: compra solo cio' di cui hai bisogno per evitare che il cibo finisca in discarica.",
	owl_3 = "Uh-uh! Le emissioni di metano del cibo in decomposizione sono 25 volte piu' potenti dell'anidride carbonica.",
	owl_4 = "Preferisci prodotti con meno imballaggi. La plastica impiega secoli a degradarsi nel nostro ecosistema.",
	owl_5 = "Il 'Batch Cooking' o cucinare in serie aiuta a risparmiare energia e a ridurre gli sprechi settimanali. Uh-uh!",
	owl_6 = "Coltivare un piccolo orto, anche sul balcone, ci aiuta a capire il valore e il tempo necessario per produrre cibo.",
	owl_7 = "Uh-uh! Mangiare meno carne rossa anche solo una volta a settimana riduce drasticamente la tua impronta ecologica.",
	owl_8 = "Lo spreco alimentare non e' solo cibo perso, ma anche spreco di terra, energia e lavoro umano.",
	owl_9 = "Uh-uh! Molti 'scarti' come i baccelli dei piselli o le foglie dei ravanelli sono commestibili e molto nutrienti!",
	owl_10 = "Il vetro e' riciclabile all'infinito. Quando compri, preferisci contenitori in vetro rispetto a quelli in plastica.",
	owl_11 = "Uh-uh! Mettere il coperchio sulla pentola quando bolle l'acqua fa risparmiare fino al 30% di energia!",
	owl_12 = "Sapevi che la buccia delle patate contiene piu' vitamine della polpa? Lavale bene e mangia tutto!",
	owl_13 = "Uh-uh! Il 'dumpster diving' e' un movimento che recupera cibo perfettamente buono buttato dai supermercati.",
	owl_14 = "Evita di comprare frutta gia' tagliata e confezionata nella plastica: costa di piu' e inquina il triplo!",
	owl_15 = "Uh-uh! La data 'Best Before' sul latte spesso e' molto prudente. Se non odora di acido, e' ancora ottimo!",
	owl_16 = "Usa borse di tela riutilizzabili per la spesa. Una borsa di plastica viene usata per 12 minuti ma dura 400 anni!",
	owl_17 = "Uh-uh! La carne di pollo ha un impatto ambientale molto minore rispetto a quella di manzo o agnello.",
	owl_18 = "Se hai del pane raffermo, bagnale con un po' d'acqua e mettilo in forno: tornera' croccante come appena fatto!",
	owl_19 = "Uh-uh! Molti detersivi per piatti inquinano l'acqua. Cerca quelli con etichetta 'Ecolabel'.",
	owl_20 = "Il modo piu' sostenibile di mangiare e' seguire la dieta mediterranea: tanti legumi, cereali e verdura di stagione!",
}

return M
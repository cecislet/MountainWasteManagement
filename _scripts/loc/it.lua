local M = {} -- <--- QUESTA RIGA CREA LA TABELLA (Mancava!)

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

	Preparati a stimolare la tua mente e a diventare un campione della sostenibilità!

	Guadagna Punti Conoscenza: Supera i nostri quiz a scelta multipla e Vero/Falso per accrescere la tua saggezza e aumentare il tuo punteggio.
	Supporta il tuo Compagno: Usa i tuoi Punti Conoscenza per fornire pasti nutrienti e premi speciali al tuo Yeti.
	Diventa un Esperto: Trasforma il successo nei quiz in un impatto reale! Impara i segreti della scienza alimentare e aiuta a eliminare gli sprechi.

	Studia sodo, gioca d'astuzia e facciamo la differenza!
	]],
	quiz_finished = "Quiz Finito! Salvataggio...",
	saving = "Salvataggio in corso...",

	-- DOMANDE
	q1 = "Qual è l'impronta idrica di 1 kg di carne bovina?",
	q1_a1 = "150000 litri", q1_a2 = "15000 litri", q1_a3 = "1500 litri", q1_a4 = "150 litri",

	q2 = "Circa quale percentuale di tutto il cibo prodotto a livello globale viene persa o sprecata?",
	q2_a1 = "5%", q2_a2 = "15%", q2_a3 = "33%", q2_a4 = "60%",

	q3 = "Vero o Falso: I cibi surgelati hanno generalmente una perdita di nutrienti maggiore rispetto ai prodotti freschi sugli scaffali.",
	q3_a1 = "Vero", q3_a2 = "Falso",

	q4 = "Qual è il modo più efficace per ridurre lo spreco alimentare a casa?",
	q4_a1 = "Comprare all'ingrosso", q4_a2 = "Pianificazione pasti e liste della spesa", q4_a3 = "Conservare i prodotti al sole", q4_a4 = "Gettare il cibo alla data 'vendere entro'",

	q5 = "Qual è la differenza tra le date 'Da consumare entro' e 'Da consumarsi preferibilmente entro'?",
	q5_a1 = "Significano la stessa cosa", q5_a2 = "'Entro' riguarda la sicurezza; 'Preferibilmente' la qualità", q5_a3 = "'Preferibilmente' riguarda la sicurezza; 'Entro' la qualità", q5_a4 = "Sono suggerimenti e possono essere ignorati",

	q6 = "Quale gas viene prodotto quando il cibo marcisce in discarica, contribuendo al cambiamento climatico?",
	q6_a1 = "Ossigeno", q6_a2 = "Azoto", q6_a3 = "Metano", q6_a4 = "Elio",

	q7 = "Vero o Falso: La maggior parte dello spreco alimentare nei paesi ad alto reddito avviene a livello di vendita e consumo.",
	q7_a1 = "Vero", q7_a2 = "Falso",

	q8 = "Cos'è l' 'Upcycling' nel contesto alimentare?",
	q8_a1 = "Buttare via il cibo", q8_a2 = "Coltivare le proprie verdure", q8_a3 = "Creare nuovi prodotti da scarti o sottoprodotti alimentari", q8_a4 = "Usare una bicicletta per la spesa",

	q9 = "Qual è il posto migliore dove conservare le cipolle per farle durare più a lungo?",
	q9_a1 = "In un sacchetto di plastica con le patate", q9_a2 = "In un luogo fresco, asciutto e buio", q9_a3 = "Nel congelatore da crude", q9_a4 = "Su un davanzale soleggiato",

	q10 = "Quale parte della 'Gerarchia dello spreco alimentare' è l'opzione preferibile?",
	q10_a1 = "Compostaggio", q10_a2 = "Nutrire gli animali", q10_a3 = "Riduzione alla fonte (prevenzione)", q10_a4 = "Smaltimento in discarica",

	q11 = "Vero o Falso: I prodotti ammaccati o 'brutti' sono solitamente nutrienti quanto quelli esteticamente perfetti.",
	q11_a1 = "Vero", q11_a2 = "Falso",

	market_guide = [[
	BENVENUTO AL MARKET GENERALE!

	Benvenuto al Market Generale! Assicurati che il tuo Yeti rimanga in salute e felice mantenendo scorte sufficienti.

	Nutri il tuo Amico: Acquista qui cibo essenziale e premi speciali specifici per il tuo Yeti.
	Valuta: Tutti gli articoli sono prezzati in Punti Conoscenza. Usa la tua saggezza per provvedere alle sue necessita'!
	Prezzi Stagionali: Tieni d'occhio il calendario! I prezzi variano in base alla stagione corrente.
	Competenze Reali: Conservazione Corretta: Impara i modi migliori per conservare il cibo nella realta' per massimizzarne la freschezza (Frigo vs. Scaffale).
	]],
	inventory_full = "INVENTARIO PIENO! Mangia qualcosa prima.",
	buy_btn = "COMPRA",
	close_btn = "CHIUDI",
	no_description = "Nessuna descrizione disponibile.",
	next_btn = "PROSSIMO",
	prev_btn = "PRECEDENTE",
}

return M
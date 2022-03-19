RGB - la toate fuctiile RGB am extras valorile corespunzatoare fiecarei culori si am aplicat
	functiile aferente pentru fiecare dintre ele.

Nearest-neighbours
	2x2:
	In for am verificat carei zone ii apartine punctul din noua imagine si in functie
	de valoarea diferentelor puse in if-uri am dat valoarea corespunzatoare matricei initiale
	resize:
	Am calculat s_x s_y si am format matricea de transformare si inversa ei.
	In for am transformat x si y folosind inversa matricei de transformare, am adaugat
	1 la valoarea lor pentru a aplica interpolarea si am obtinut coordonatele valorilor
	aferente din matricea initiala rotunjind xp si yp. Cum for-urile parcurg de la 0 la
	p - 1, respectiv q - 1 matricea finala are coordonatele adunate cu 1.

Bilinear
	2x2:
	Am calculat coeficientii de interpolare insa nu am folosit formula care ii continea din
	teoria data in tema. Am construit matricele intermediare si am determinat valoarea punctului
	din matricea finala inmultindu-le.
	resize:
	Am calculat coeficinetii de interpolare folosind formula din teorie cu schimbari la
	ordinea coordonatelor pentru matricea initiala, apoi punctele care inconjoara punctul
	(xp,yp) : daca acesta se alfa pe ultima coloana sau ultima linie alegeam ca puncte
	inconjuratoare pe el si cel dinaintea lui, iar in mod normal punctele inconjuratoare
	erau partea sa intreaga si adunata cu 1.
	La final am folosit formula din teorie ca sa atribui valoarea aferenta matricei finale.
	rotate:
	La fel ca la resize, dar am pus conditii pentru coordnoate : daca in urma transormarii
	cu matricea de transformare inversa erau negative am pus un pixel negru, iar daca dupa
	ce le adunam cu 1 ieseau in afara matrcei am pus tot un pixel negru.
Bicubic
	precalc:
	La calculul fiecarei derivate am aplicat formula din teorie, iar pentru fiecare in parte
	am tinut cont de cazurile in care derivata poate fi pusa 0.
	coef:
	Am inversat coordonatele initiale (x->y) iar dupa ce am facut inmultirea matricelor
	intermediare am transpus rezultatul pentru a output-ul corect.
	resize:
	La fel ca la celelalte functii de resize, numai ca de data aceasta am trecut coordonatele
	(xp,yp) in patratul unitate.
	Am atribuit matricei finale valorile corespunzatoare folosind formula din teorie.

	
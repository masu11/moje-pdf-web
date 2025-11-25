# PDF web for GitHub Pages

Tento balíček obsahuje jednoduchý statický web (index.html) který zobrazí až 3 PDF inline.
Postup nasazení na GitHub Pages je níže.

## Co je v ZIPu
- index.html   (hlavní web)
- deploy.sh    (volitelný skript pro rychlé nahrání — vyžaduje git a že jste přihlášeni)
- README.md    (tento soubor)
- doc1.pdf, doc2.pdf, doc3.pdf (SOUČASNĚ JSOU TO ZÁLOŽNÍ SOUBORY — nahraďte svými PDF)

## Rychlé kroky (web UI)
1. Vytvořte si veřejný repo na GitHubu (např. `moje-pdf-web`).
2. V repozitáři zvolte **Add file → Upload files** a nahrajte obsah ZIP (nebo rozbalte lokálně a nahrajte soubory).
3. Commit changes.
4. V repozitáři jděte do **Settings → Pages** (nebo Code and automation → Pages) a vyberte:
   - Source: `main` branch
   - Folder: `/ (root)`
5. Uložte. Po minutě bude stránka dostupná na:
   `https://<USERNAME>.github.io/<REPO>/`

## Rychlé kroky (CLI)
Pokud chcete použít příkazovou řádku, upravte v lokální složce README a pak:

```bash
git init
git add .
git commit -m "Initial commit - PDF web"
git branch -M main
git remote add origin https://github.com/<USERNAME>/<REPO>.git
git push -u origin main
```

## Jak nahradit PDF
- Nahraďte `doc1.pdf`, `doc2.pdf`, `doc3.pdf` svými soubory se srozumitelnými názvy (bez diakritiky je to bezpečnější).
- Pokud soubory dáte do podsložky `pdf/`, upravte `data-src` v `index.html` – např. `data-src="pdf/Smlouva2025.pdf"` a také iframe počáteční `src`.

## Pokud chcete, že to upravím dál:
- Pošlete mi své názvy PDF (nebo přímo PDF soubory) a já upravím `index.html` a připravím ZIP s nimi.
- Nebo mi napište své GitHub uživatelské jméno a název repozitáře a já pro vás připravím přesné git příkazy (které stačí zkopírovat).


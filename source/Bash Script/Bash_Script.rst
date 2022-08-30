Bash Script
===========

Skrypty bashowe

Baza dla zmian byl skrypt *make.bat* ktory jest tworzony przez Shpinxa w folderze projektu po uruchomieniu komendy
*Sphinx-Quickstart*. Uruchomienie komendy *make html* uruchamia Sphinxa na kodzie projektu
i tworzy pliki HTML w folderze */build/html*

Funkcjonalnosc skryptu zostala poszerzona:

* Standardowa funkcjonalnosc
* Kopiowanie nowo wygenerowanych plikow do projektu *Strona*
* Zapytanie czy pliki maja zostac wyslane do repozytorium

    * Jesli tak

        * skrypt prosi o nazwe commita
        * skrypt wysyla commit do repozytorium *Strona* i *Sphinx*
    * Jesli nie

        * zakonczenie dzialania skryptu

Efekt dzialania skryptu:

* Utworzenie plikow HTML
* Przekopiowanie nowych plikow do projektu *Strona*
* Uaktualnienie repozytoriow *Strona* i *Sphinx*

Jest to bardzo wygodne rozwiazanie. Jedno klikniecie aktualizuje oba repozytoria oraz strone hostowana bezposrednio z servera GitHub.
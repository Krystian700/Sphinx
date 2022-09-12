Bash Script
===========

Skrypty bashowe

- Poniższa modyfikacja dziala tylko w Windows. Zadanie - zbadac jak taki skrypt napisac w linuksie a najlepiej zeby mozna bylo zapewnic taka sama funkcjonalnosc w linuksie i windowsie. Na razie nie wiem jak to zrobić ale pewnie sie jakos da. 


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

Zadania
=======
1) Napisac wersje zmodfikowanego make.bat pod Linux
2) znalezc sposob by mozna bylo komitowac z linuxa lub windowsa bez edcji skryptu
3) napisac skrypt na przekopiowywanie zawartosci folderu do innej lokalizacji




# jizdni-nerady

Jízdní neřády jsou osobní Swift CLI pro občasné jednorázové dotazy do IDOSu.
Používají veřejně dostupné URL rozhraní webu IDOS a parsují vrácené HTML, takže nejde o stabilní ani garantované datové API.

## Použití

Našeptání názvu stanice nebo místa:

```sh
swift run jizdni-nerady suggest Praha
swift run jizdni-nerady suggest Svinov --timetable ostrava
```

Vyhledání spojení:

```sh
swift run jizdni-nerady connections --from Praha --to Brno --date 18.6.2026 --time 12:00
swift run jizdni-nerady connections --from "Frýdek-Místek" --to Ostrava --timetable odis
```

Názvy linek ve výpisu spojení používají v terminálu stejnou barvu, jakou IDOS posílá v HTML výsledku.

Volitelně lze omezit počet vypsaných položek:

```sh
swift run jizdni-nerady connections --from Praha --to Brno --limit 3
```

### Jízdní řád

Výchozí jízdní řád je `vlakyautobusymhdvse`, tedy vše. Zvolit ho lze parametrem `--timetable`:

```sh
swift run jizdni-nerady connections --from Praha --to Beroun --timetable pid
swift run jizdni-nerady connections --from Ostrava --to "Frýdek-Místek" --timetable odis
swift run jizdni-nerady connections --from Praha --to Brno --timetable vlaky
```

Seznam známých voleb vypíše:

```sh
swift run jizdni-nerady timetables
```

Parametr přijímá také vlastní URL slug IDOSu, například `karlovyvary`, pokud ho IDOS podporuje. Kromě slugů fungují i názvy z katalogu, například `--timetable "MHD Karlovy Vary"` nebo `--timetable "Zlín a Otrokovice"`.

Nástroj je určený pro nízkofrekvenční osobní použití. Pokud IDOS změní HTML nebo interní JSONP našeptávač, parser bude potřeba upravit.

## Vývoj

```sh
swift build
swift test
swift run jizdni-nerady
```

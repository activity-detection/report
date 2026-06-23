#!/bin/env perl

# ======================================================================================
# Zoptymalizowany plik konfiguracyjny latexmk dla LuaLaTeX + VS Code
# ======================================================================================

# Tryb kompilacji: 4 wymusza użycie LuaLaTeX
$pdf_mode = 4;

# Folder docelowy na pliki pomocnicze i wynikowy PDF
$out_dir = "build";

# Flagi dla silników kompilacji (w tym Shell Escape dla zewnętrznych pakietów i SyncTeX)
set_tex_cmds("--shell-escape --synctex=1 %O %S");

# Automatyczne uruchamianie bibtex/biber w razie wykrycia zmian w bibliografii
$bibtex_use = 1;
$biber = "biber --validate-datamodel %O %S";

# Pokaż statystyki czasu procesora po zakończeniu kompilacji
$show_time = 1;

# Maksymalna liczba powtórzeń kompilacji (w celu rozwiązania referencji)
$max_repeat = 5;

# Dodatkowe rozszerzenia do czyszczenia przy komendzie latexmk -c
push @generated_exts, 'loe', 'lol', 'run.xml';
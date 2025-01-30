# Zkontrolovat, zda je aktuální adresář domovský adresář
if [ "$PWD" != "$HOME" ]; then
    # Skript pokračuje bez zobrazení textu nebo obrázku
    return
fi

# Vyčištění terminálu
clear

echo -e "\n"

# Získání aktuálního času ve formátu HH:MM
TIME=$(date +"%H:%M")
SPACE="s/^/                                /" #mezera mezi textem a obrazkem

# Získání zkrácených informací o systému
SYSTEM_INFO=$(uname -sr)  # Zkrácené informace o systému (název a verze)
UPTIME_INFO=$(uptime -p)  # Doba běhu systému

# Získání informací o RAM
RAM_INFO=$(free -h | awk '/^Mem:/ {print "RAM: " $3 "/" $2}')  # Pouze použité a celkové množství RAM

# Získání informací o CPU
CPU_INFO=$(lscpu | awk '/^Model name:/ {print "CPU: " $3, $4, $5, $6, $7}')  # Název CPU

# Zobrazení obrázku
kitten icat --align left --place 25x15@0x1 "$(dirname "$0")/image.png"

# Definice barev
RED='\033[1;91m'    # Jasné červené
GREEN='\033[1;92m'  # Jasné zelené
YELLOW='\033[1;93m' # Jasné žluté
BLUE='\033[1;94m'   # Jasné modré
NC='\033[0m'        # Bez barvy

# Přidání vertikálního odsazení a poté zobrazení textu
echo -e "\n\n"  # Sníženo na 2 prázdné řádky
echo -e "${GREEN}Hello $(basename $HOME)${NC}" | sed "$SPACE"  # Použití názvu domovského adresáře
echo ""  # Původní prázdný řádek
echo -e "${BLUE}$TIME${NC}" | sed "$SPACE"  # Horizontální odsazení textu
echo -e "${YELLOW}$SYSTEM_INFO${NC}" | sed "$SPACE"  # Horizontální odsazení textu
echo -e "${YELLOW}$UPTIME_INFO${NC}" | sed "$SPACE"  # Horizontální odsazení textu
echo -e "${YELLOW}$RAM_INFO${NC}" | sed "$SPACE"  # Horizontální odsazení textu
echo -e "${YELLOW}$CPU_INFO${NC}" | sed "$SPACE"  # Horizontální odsazení textu

# Přidání dalších prázdných řádků pro odsazení
echo -e "\n"  # Přidáno 2 prázdné řádky pro odsazení

echo -e "\n\n"  # Původní prázdný řádek
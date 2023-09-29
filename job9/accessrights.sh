CSV_FILE="/home/alyson/shell-exe/job9/Shell_Userlist.csv"
tail -n +2 "$CSV_FILE" | while IFS=',' read -r id prenom nom mdp role
do
prenom=$(echo "$prenom" | sed 's/ *$//')
if id "$prenom" &>/dev/null; then
echo "user $prenom alredy existed"
else
if [ "$role" == "Adim" ]; then
sudo useradd -m -G sudo "$prenom"
else
sudo useradd -m "$prenom"
fi
fi
done


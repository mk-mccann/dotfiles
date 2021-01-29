#!/bash/bin

# -- List of snap apps requiring classic permissions-- #
SNAPS="code pycharm-professional skype slack spotify xmind"


for s in $SNAPS
do 
	{ # Try
		snap install $s
	} || { # Catch
		snap install $s --classic
	}
done


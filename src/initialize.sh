XDG_CONFIG_HOME=($HOME/.config)
LUTHOR_CONFIG_HOME=($XDG_CONFIG_HOME/luthor)
RECIPE_CONFIG_HOME=($LUTHOR_CONFIG_HOME/recipes)
PROFILE_CONFIG_HOME=($LUTHOR_CONFIG_HOME/profiles)
SCRIPT_CONFIG_HOME=($LUTHOR_CONFIG_HOME/scripts)

if [ ! -d "$LUTHOR_CONFIG_HOME" ]; then
	`mkdir -p $LUTHOR_CONFIG_HOME`;
	`mkdir -p $RECIPE_CONFIG_HOME`;
	`mkdir -p $PROFILE_CONFIG_HOME`;
	`mkdir -p $SCRIPT_CONFIG_HOME`;
	create_base;
	create_scripts;
fi
CONFIG_FILE=${LUTHOR_CONFIG_HOME}/luthor.ini
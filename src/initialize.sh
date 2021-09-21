XDG_CONFIG_HOME=($HOME/.config)
dlx_CONFIG_HOME=($XDG_CONFIG_HOME/dlx)
RECIPE_CONFIG_HOME=($dlx_CONFIG_HOME/recipes)
PROFILE_CONFIG_HOME=($dlx_CONFIG_HOME/profiles)
SCRIPT_CONFIG_HOME=($dlx_CONFIG_HOME/scripts)

if [ ! -d "$dlx_CONFIG_HOME" ]; then
	`mkdir -p $dlx_CONFIG_HOME`;
	`mkdir -p $RECIPE_CONFIG_HOME`;
	`mkdir -p $PROFILE_CONFIG_HOME`;
	`mkdir -p $SCRIPT_CONFIG_HOME`;
	create_base;
	create_scripts;
fi
CONFIG_FILE=${dlx_CONFIG_HOME}/dlx.ini

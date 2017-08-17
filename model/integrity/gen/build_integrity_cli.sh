GIT_WS=~/git
BPHOME=~/xtuml/BridgePoint

echo "launching Bridgepoint..."
$BPHOME/tools/mc/bin/CLI.sh Launch -workspacePreferences "bridgepoint_prefs_allow_operations_in_where=true"

# import the projects
echo "Importing projects..."
$BPHOME/tools/mc/bin/CLI.sh Import -project $GIT_WS/bridgepoint/src/org.xtuml.bp.ui.marking/
$BPHOME/tools/mc/bin/CLI.sh Import -project $GIT_WS/mc/model/mcooa/
$BPHOME/tools/mc/bin/CLI.sh Import -project $GIT_WS/mc/model/mcshared/
$BPHOME/tools/mc/bin/CLI.sh Import -project $GIT_WS/mc/model/integrity/

# build the projects
echo "Building projects..."
$BPHOME/tools/mc/bin/CLI.sh Build -project integrity

# shutdown eclipse instance
$BPHOME/tools/mc/bin/CLI.sh Launch -exit


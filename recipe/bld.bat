sed -i 's/<hb.h>/"hb.h"/' src/harfbuzz.h
sed -i 's/<hb-ft.h>/"hb-ft.h"/' src/harfbuzz.h

"%R%" CMD INSTALL --build . %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit 1

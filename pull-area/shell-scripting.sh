# /bin/sh

DIRECTORY="TEST-DIR"

if [ -d "$DIRECTORY" ];
 then
  # Control will enter here if $DIRECTORY exists.
  echo "passes."
fi

echo "huh?"
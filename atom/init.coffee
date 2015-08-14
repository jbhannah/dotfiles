# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"
exec = require('child_process').exec

savePackages = ->
  exec "apm list --installed --bare | grep '^[^@]\\+' -o > $HOME/.atom/packages.txt"

atom.packages.onDidLoadPackage savePackages
atom.packages.onDidUnloadPackage savePackages

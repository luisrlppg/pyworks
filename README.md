0. Before Installation make sure you have the python.zip file under tools/

## Información Adicional

The file can be found and downloaded from the following sources:
	1. `smb://192.168.1.178/share/LRLP/temp/python.zip`
		1. Move the downloaded zip to pyworks/tools/

	2. Additionally it can be downloaded from this website https://github.com/winpython/winpython/releases/download/17.2.20251222post1/WinPython64-3.14.2.0free_post1.zip
		But in case you downloaded it from the website follow this steps...
		1. Extract the zip 
		2. Open the extracted folder (for example... WinPython64-3.14.2.0free_post1/WPy64-31380/)
		3. Select all files in that folder and create a zip called python.zip
		4. Move the zip file to pyworks/tools/

1. Click on the install.bat file
2. Open SolidWorks with camworks plugin.
3. Go to Solidworks Menu in the top left of the window.
4. Go to Tools > Camworks > Options.
5. Go to File Locations (Tab).
6. In the Post processing (section) Mark Check the option [Open G-code file in the following application]
7. In the textbox under the checkbox you just marked, add the current path...
		C:\pyworks\Scripts\fixgc.bat


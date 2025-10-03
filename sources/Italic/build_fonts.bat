@echo off

fontmake -i -a -o ttf -m Perun-Italic.designspace
fontmake -i -a -o otf -m Perun-Italic.designspace
fontmake -a -o variable -m Perun-Italic.designspace

python fix-dsig.py .\autohinted\instance_ttf\Perun-ThinItalic.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Perun-ExtraLightItalic.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Perun-LightItalic.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Perun-RegularItalic.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Perun-MediumItalic.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Perun-SemiBoldItalic.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Perun-BoldItalic.ttf |
python fix-dsig.py .\instance_otf\Perun-ThinItalic.otf |
python fix-dsig.py .\instance_otf\Perun-ExtraLightItalic.otf |
python fix-dsig.py .\instance_otf\Perun-LightItalic.otf |
python fix-dsig.py .\instance_otf\Perun-RegularItalic.otf |
python fix-dsig.py .\instance_otf\Perun-MediumItalic.otf |
python fix-dsig.py .\instance_otf\Perun-SemiBoldItalic.otf
python fix-dsig.py .\instance_otf\Perun-BoldItalic.otf |

python fix-dsig.py .\variable_ttf\Perun-Italic-VF.ttf

move .\autohinted\instance_ttf\*.ttf ..\fonts\ttf\
move .\instance_otf\*.otf ..\fonts\otf\
move .\variable_ttf\Perun-Italic-VF.ttf ..\fonts\vf\Perun-Italic[wght].ttf
move .\variable_ttf\Perun-Italic-VF.ttf
rmdir .\autohinted\instance_ttf\
rmdir .\autohinted\
rmdir .\instance_otf\
rmdir .\variable_ttf\
python ..\fonts\generate-woff-woff2.py
exit
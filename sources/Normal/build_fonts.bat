@echo off

fontmake -i -a -o ttf -m Perun.designspace
fontmake -i -a -o otf -m Perun.designspace
fontmake -a -o variable -m Perun.designspace

python fix-dsig.py .\autohinted\instance_ttf\Perun-Thin.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Perun-ExtraLight.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Perun-Light.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Perun-Regular.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Perun-Medium.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Perun-SemiBold.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Perun-Bold.ttf |
python fix-dsig.py .\instance_otf\Perun-Thin.otf |
python fix-dsig.py .\instance_otf\Perun-ExtraLight.otf |
python fix-dsig.py .\instance_otf\Perun-Light.otf |
python fix-dsig.py .\instance_otf\Perun-Regular.otf |
python fix-dsig.py .\instance_otf\Perun-Medium.otf |
python fix-dsig.py .\instance_otf\Perun-SemiBold.otf
python fix-dsig.py .\instance_otf\Perun-Bold.otf |

python fix-dsig.py .\variable_ttf\Perun-VF.ttf |

move .\autohinted\instance_ttf\*.ttf ..\fonts\ttf\
move .\instance_otf\*.otf ..\fonts\otf\
move .\variable_ttf\Perun-VF.ttf ..\fonts\vf\Perun[wght].ttf
rmdir .\autohinted\instance_ttf\
rmdir .\autohinted\
rmdir .\instance_otf\
rmdir .\variable_ttf\
python ..\fonts\generate-woff-woff2.py
exit
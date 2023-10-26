TEMPLATE = aux

VERSION = 5.4.0.1

INSTALLER = installer

INPUT = $$PWD/config/ $$PWD/packages
example.input = INPUT
example.output = $$INSTALLER
example.commands = G:/WorkDev/Tools/QtInstallerFramework/4.6/bin/binarycreator.exe -c $$PWD/config/config.xml -p $$PWD/packages DCRobotStudioInstaller
example.CONFIG += target_predeps no_link combine

QMAKE_EXTRA_COMPILERS += example

OTHER_FILES = README

DISTFILES += \
    config/config.xml \
    config/app.ico \
    config/favicon.ico \
    config/logo.ico \
    packages/com.dacangkeji.ifw/meta/installscript.qs \
    packages/com.dacangkeji.ifw/meta/package.xml \
    readme.md



DISTFILES += \
    app.rc

RC_FILE = app.rc


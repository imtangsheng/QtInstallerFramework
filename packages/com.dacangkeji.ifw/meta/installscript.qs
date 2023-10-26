/****************************************************************************
**
** Copyright (C) 2017 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the FOO module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:GPL-EXCEPT$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 as published by the Free Software
** Foundation with exceptions as appearing in the file LICENSE.GPL3-EXCEPT
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

function Component()
{
//    // 添加操作函数
//    function addOperation(op)
//    {
//        installer.addOperation(op);
//    }

//    // 组件名称
//    this.componentName = "RobotStudioApp";
//    // 组件版本号
//    this.componentVersion = "5.0.0";

//    // 开始安装前的初始化操作
//    this.installationStarted = function()
//    {
//        console.log("Installation started");
//    }

//    // 条件判断
//    if (systemInfo.productType === "windows")
//    {
//        // Windows平台特定操作
//        var startMenuDir = installer.value("StartMenuDir");
//        var shortcutPath = startMenuDir + "\\RobotStudioServer.lnk";
//        addOperation("CreateShortcut", "@TargetDir@/RobotStudioServer.exe", shortcutPath);
//    }
//    else if (systemInfo.productType === "osx")
//    {
//        // macOS平台特定操作
//        var applicationsDir = installer.value("ApplicationsDir");
//        var shortcutPath = applicationsDir + "/MyApp.app";
//        addOperation("CopyDirectory", "@TargetDir@/MyApp.app", shortcutPath);
//    }

//    // 结束安装后的清理操作
//    this.installationFinished = function()
//    {
//        console.log("Installation finished");
//    }
}

Component.prototype.createOperations = function()
{
    // call default implementation to actually install README.txt!
    component.createOperations();

    if (systemInfo.productType === "windows") {
        //开始菜单快捷方式
        component.addOperation(
            "CreateShortcut",
            "@TargetDir@/RobotStudioServer.exe",
            "@StartMenuDir@/RobotStudio.lnk",
            "workingDirectory=@TargetDir@",
            "iconPath=@TargetDir@/favicon.ico",
            "description=Open DcRobotStudioServer.exe file"
            );
        //桌面快捷方式
        component.addOperation(
            "CreateShortcut",
            "@TargetDir@/RobotStudioServer.exe",
            "@DesktopDir@/RobotStudio.lnk",
            "workingDirectory=@TargetDir@",
            "iconPath=@TargetDir@/favicon.ico",
            "description=打开机器人后台服务程序"
        );
    }
}

//function Component(name, parent) {
//    installer.defaultComponentSelectionChanged.connect(this, function() {
//        if (installer.isUninstallation() || installer.isUpdater()) {
//            return;
//        }
//        if (this.componentName === "com.dacangkeji.ifw") {
//            var targetDir = installer.value("TargetDir");
//            var configFile = targetDir + "/user.ini";
//            if (QFile.exists(configFile)) {
//                component.selectionChanged("false");
//            }
//        }
//    });
//    Component.prototype.constructor.call(this, name, parent);
//}

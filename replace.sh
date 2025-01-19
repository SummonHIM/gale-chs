#!/bin/bash

# Replace text
# $1 File path
# $2 Source text
# $3 Replace text
# $4 Use sed -z (boolen)
replace_text() {
    local file=$1
    local source_text=$2
    local replace_text=$3
    local null_data=$4

    local options="-i"

    if [[ ! -f "$file" ]]; then
        echo "Error: File '$file' not found!"
        return 1
    fi

    if $null_data; then
        options="-z $options"
    fi

    # shellcheck disable=SC2086
    if sed $options "s/${source_text//\//\\/}/${replace_text//\//\\/}/g" "$file"; then
        echo "Text replaced successfully in file '$file'."
    else
        echo "Error: Failed to replace text in file '$file'."
        return 1
    fi
}

replace_text "gale/src/lib/components/ConfirmPopup.svelte" "}}>Cancel</BigButton" "}}>取消</BigButton"
replace_text "gale/src/lib/components/GameSelection.svelte" "Search for games..." "搜索新游戏…"
replace_text "gale/src/lib/components/GameSelection.svelte" "No games found" "未找到该游戏"
replace_text "gale/src/lib/components/GameSelection.svelte" "Your game missing? If the game is new on Thunderstore there's a chance we have yet to add it." "没找到你想玩的游戏？如果这个游戏刚刚发布，则 Thunderstore 可能还没有添加它。"
replace_text "gale/src/lib/components/GameSelection.svelte" "If you can find it on" "如果你能在"
replace_text "gale/src/lib/components/GameSelection.svelte" "but not here, please message us on" "上找到但这里没有列出来，请在"
replace_text "gale/src/lib/components/GameSelection.svelte" "or open an issue on" "上联系我们或在我们的"
replace_text "gale/src/lib/components/GameSelection.svelte" "our Github" "Github 上提交新 Issue"
replace_text "gale/src/lib/components/PathField.svelte" "Not set" "未设置"
replace_text "gale/src/lib/config/ConfigEntryField.svelte" "Default: " "默认："
replace_text "gale/src/lib/config/ConfigEntryField.svelte" "Range: " "范围："
replace_text "gale/src/lib/config/ConfigFileEditor.svelte" "Created by" "创建者"
replace_text "gale/src/lib/import/ExportCodePopup.svelte" "Export as code" "导出为代码"
replace_text "gale/src/lib/import/ExportCodePopup.svelte" "Exporting \(.\+\) as code..." "将 \1 导出为代码…"
replace_text "gale/src/lib/import/ExportCodePopup.svelte" "Export complete! The code has been copied to your clipboard:" "导出完成！代码已经复制到你的剪切板中："
replace_text "gale/src/lib/import/ImportProfilePopup.svelte" "Are you sure you want to override \(.\+\)" "真的确定要覆盖 \1"
replace_text "gale/src/lib/import/ImportProfilePopup.svelte" "Import profile" "导入整合包"
replace_text "gale/src/lib/import/ImportProfilePopup.svelte" "Create new" "创建新整合包"
replace_text "gale/src/lib/import/ImportProfilePopup.svelte" "Overwrite existing" "覆盖现有的"
replace_text "gale/src/lib/import/ImportProfilePopup.svelte" "Profile name" "整合包名称"
replace_text "gale/src/lib/import/ImportProfilePopup.svelte" "A unique name for the imported profile." "为已导入的整合包起一个独一无二的名字。"
replace_text "gale/src/lib/import/ImportProfilePopup.svelte" "Profile \(.\+\) already exists!" "整合包 \1 已存在！"
replace_text "gale/src/lib/import/ImportProfilePopup.svelte" "Choose profile" "选择整合包"
replace_text "gale/src/lib/import/ImportProfilePopup.svelte" "Which existing profile to overwrite with the imported one." "来用于覆盖当前存在的整合包。"
replace_text "gale/src/lib/import/ImportProfilePopup.svelte" "mods to install" "个模组需要安装"
replace_text "gale/src/lib/import/ImportProfilePopup.svelte" "Advanced options" "高级选项"
replace_text "gale/src/lib/import/ImportProfilePopup.svelte" 'text="Import all files"' 'text="导入所有文件"'
replace_text "gale/src/lib/import/ImportProfilePopup.svelte" "Import all files found in the profile, instead of just well-known config file formats." "将配置文件夹中找到的所有文件导入，而不仅仅是常见的配置文件格式。"
replace_text "gale/src/lib/import/ImportProfilePopup.svelte" "This is unsafe and can let an attacker install malware on your system." "这是一种不安全的操作，可能会让攻击者在你的系统上安装恶意软件。"
replace_text "gale/src/lib/import/ImportProfilePopup.svelte" "Only enable this for trusted profiles!" "仅在信任的配置文件中启用此功能！"
replace_text "gale/src/lib/import/ImportProfilePopup.svelte" "}}>Cancel</BigButton" "}}>取消</BigButton"
replace_text "gale/src/lib/import/ImportProfilePopup.svelte" "{:else}\n\(\t\+\)Import" "{:else}\n\1导入"
replace_text "gale/src/lib/import/ImportProfilePopup.svelte" "Enter import code..." "请输入导入代码…"
replace_text "gale/src/lib/import/ImportR2Flow.svelte" 'label="Data directory"' 'label="数据文件夹"'
replace_text "gale/src/lib/import/ImportR2Flow.svelte" "The data directory of your r2modman/TMM installation." "r2modman/TMM 所安装的数据文件夹。"
replace_text "gale/src/lib/import/ImportR2Flow.svelte" "Loading..." "加载中…"
replace_text "gale/src/lib/import/ImportR2Flow.svelte" "No installations found, please specify the data path above." "未找到相关的软件，请指定上方的数据路径。"
replace_text "gale/src/lib/import/ImportR2Flow.svelte" "Include all" "全选"
replace_text "gale/src/lib/import/ImportR2Popup.svelte" "Import profiles from other manager" "从其他管理器导入整合包"
replace_text "gale/src/lib/import/ImportR2Popup.svelte" "This will import profiles <b>for the current game</b> from r2modman or Thunderstore Mod Manager." "此操作将会从 r2modman 或 Thunderstore Mod Manager 导入<b>当前游戏</b>缓存的模组与整合包。"
replace_text "gale/src/lib/import/ImportR2Popup.svelte" "The process may take a couple of minutes, depending on how many mods there are to import." "该过程可能需要数分钟，具体取决于要导入的模组和整合包的数量。"
replace_text "gale/src/lib/import/ImportR2Popup.svelte" "Existing profiles with the same name will be overwritten!" "同名的整合包将会被覆盖！"
replace_text "gale/src/lib/import/ImportR2Popup.svelte" "Do not close Gale while the import is in progress." "导入过程中请不要关闭 Gale。 "
replace_text "gale/src/lib/import/ImportR2Popup.svelte" ">Cancel</BigButton>" ">取消</BigButton>"
replace_text "gale/src/lib/import/ImportR2Popup.svelte" ">Import</BigButton>" ">导入</BigButton>"
replace_text "gale/src/lib/menu/Contextbar.svelte" "Are you sure you want to delete \(.\+\)" "你真的确定要删除 \1"
replace_text "gale/src/lib/menu/Contextbar.svelte" "Launch game" "启动游戏"
replace_text "gale/src/lib/menu/Contextbar.svelte" "Loading..." "加载中…"
replace_text "gale/src/lib/menu/Contextbar.svelte" "New profile" "创建整合包"
replace_text "gale/src/lib/menu/Contextbar.svelte" "If the game is taking a while to start, it's probably because Steam is starting up." "如果游戏迟迟未启动，则可能是 Steam 正在启动。"
replace_text "gale/src/lib/menu/Contextbar.svelte" "Select game to mod" "选择需要管理模组的游戏"
replace_text "gale/src/lib/menu/DependantsPopup.svelte" "{verb}\n\(\t\+\){name} only" "仅{verb} {name}" true
replace_text "gale/src/lib/menu/DependantsPopup.svelte" "{verb} all" "{verb} 全部"
replace_text "gale/src/lib/menu/Menubar.svelte" "Select the mod file to import" "选择欲导入的模组文件"
replace_text "gale/src/lib/menu/Menubar.svelte" "Dll or zip" "Dll 或 zip"
replace_text "gale/src/lib/menu/Menubar.svelte" "Select the file to import" "选择欲导入的文件"
replace_text "gale/src/lib/menu/Menubar.svelte" "Profile file" "整合包文件"
replace_text "gale/src/lib/menu/Menubar.svelte" "Select the directory to export the profile to" "选择欲将整合包导出的文件夹"
replace_text "gale/src/lib/menu/Menubar.svelte" "Are you sure you want to uninstall all disabled mods?" "你真的确定要卸载所有已禁用的模组吗？"
replace_text "gale/src/lib/menu/Menubar.svelte" "Are you sure you want to delete all cached mods? This could potentially double the disk space used by installed mods. Only proceed if you know what you're doing!" "你真的确定要删除所有已缓存的模组吗？这可能会造成已安装的模组所使用的磁盘空间增加一倍。请确认好是否真的要这么做！"
replace_text "gale/src/lib/menu/Menubar.svelte" 'label="File"' 'label="文件"'
replace_text "gale/src/lib/menu/Menubar.svelte" "Open profile directory" "打开整合包文件夹"
replace_text "gale/src/lib/menu/Menubar.svelte" "Open game directory" "打开游戏文件夹"
replace_text "gale/src/lib/menu/Menubar.svelte" "Open game log" "打开游戏日志"
replace_text "gale/src/lib/menu/Menubar.svelte" "Open Gale log" "打开 Gale 日志"
replace_text "gale/src/lib/menu/Menubar.svelte" "Clear mod cache" "清理模组缓存"
replace_text "gale/src/lib/menu/Menubar.svelte" "Clear unused mod cache" "清除未使用的模组缓存"
replace_text "gale/src/lib/menu/Menubar.svelte" 'label="Profile"' 'label="整合包"'
replace_text "gale/src/lib/menu/Menubar.svelte" "Create new profile" "创建新整合包"
replace_text "gale/src/lib/menu/Menubar.svelte" "Rename active profile" "重命名当前整合包"
replace_text "gale/src/lib/menu/Menubar.svelte" "Duplicate active profile" "复制当前整合包"
replace_text "gale/src/lib/menu/Menubar.svelte" "Copy mod list" "复制模组列表"
replace_text "gale/src/lib/menu/Menubar.svelte" "Copy debug info" "复制调试信息"
replace_text "gale/src/lib/menu/Menubar.svelte" "Copy launch arguments" "复制启动参数"
replace_text "gale/src/lib/menu/Menubar.svelte" "Enable all mods" "启用所有模组"
replace_text "gale/src/lib/menu/Menubar.svelte" "Disable all mods" "禁用所有模组"
replace_text "gale/src/lib/menu/Menubar.svelte" "Uninstall disabled mods" "卸载已禁用模组"
replace_text "gale/src/lib/menu/Menubar.svelte" 'label="Import"' 'label="导入"'
replace_text "gale/src/lib/menu/Menubar.svelte" "...profile from code" "从代码导入整合包"
replace_text "gale/src/lib/menu/Menubar.svelte" "...profile from file" "从文件导入整合包"
replace_text "gale/src/lib/menu/Menubar.svelte" "...local mod" "导入本地模组"
replace_text "gale/src/lib/menu/Menubar.svelte" "...profiles from r2modman" "从 r2modman 导入整合包"
replace_text "gale/src/lib/menu/Menubar.svelte" 'label="Export"' 'label="导出"'
replace_text "gale/src/lib/menu/Menubar.svelte" "...profile as code" "…整合包为代码"
replace_text "gale/src/lib/menu/Menubar.svelte" "...profile as file" "…整合包为文件"
replace_text "gale/src/lib/menu/Menubar.svelte" 'label="Window"' 'label="窗口"'
replace_text "gale/src/lib/menu/Menubar.svelte" "Zoom in" "放大"
replace_text "gale/src/lib/menu/Menubar.svelte" "Zoom out" "缩小"
replace_text "gale/src/lib/menu/Menubar.svelte" "Reset zoom" "重置缩放"
replace_text "gale/src/lib/menu/Menubar.svelte" 'label="Help"' 'label="帮助"'
replace_text "gale/src/lib/menu/Menubar.svelte" "Report a bug" "报告 Bug"
replace_text "gale/src/lib/menu/Menubar.svelte" "Join discord server" "加入 Discord 服务器"
replace_text "gale/src/lib/menu/Menubar.svelte" "About Gale" "关于 Gale"
replace_text "gale/src/lib/menu/Menubar.svelte" "{capitalize(profileOperation)} profile" "{capitalize(profileOperation)} 整合包"
replace_text "gale/src/lib/menu/Menubar.svelte" "Enter a name for the duplicated profile:" "为欲复制的整合包起一个新名字："
replace_text "gale/src/lib/menu/Menubar.svelte" "Enter a new name for the profile:" "为整合包起一个新名字："
replace_text "gale/src/lib/menu/Menubar.svelte" "Enter name..." "请输入名字…"
replace_text "gale/src/lib/menu/Menubar.svelte" "This process might take up to a minute depending on the size of the profile, please be\n\(\t\+\)patient." "该过程花费的时间取决于此整合包的大小，请耐心等待。" true
replace_text "gale/src/lib/menu/Menubar.svelte" ">Cancel</BigButton>" ">取消</BigButton>"
replace_text "gale/src/lib/menu/NewProfilePopup.svelte" "Create new profile" "创建新整合包"
replace_text "gale/src/lib/menu/NewProfilePopup.svelte" "Choose a name for the new profile:" "为新整合包起一个新名字："
replace_text "gale/src/lib/menu/NewProfilePopup.svelte" "Enter name..." "请输入名字…"
replace_text "gale/src/lib/menu/NewProfilePopup.svelte" ">Create</BigButton>" ">创建</BigButton>"
replace_text "gale/src/lib/menu/Updater.svelte" "Unknown error" "未知错误"
replace_text "gale/src/lib/menu/Updater.svelte" "Failed to update Gale" "更新 Gale 失败"
replace_text "gale/src/lib/menu/Updater.svelte" "Gale will now restart in order to apply the update." "Gale 将会重启来应用本次更新。"
replace_text "gale/src/lib/menu/Updater.svelte" "Downloading update..." "正在下载更新…"
replace_text "gale/src/lib/menu/Updater.svelte" "Update available" "更新可用"
replace_text "gale/src/lib/menu/Updater.svelte" "App update available" "有可用的应用更新"
replace_text "gale/src/lib/menu/Updater.svelte" "Version \(.\+\) of Gale is available - you have \(.\+\)" "Gale 已发布新版本 \1 - 当前版本为 \2"
replace_text "gale/src/lib/menu/Updater.svelte" "There is an update available for Gale." "Gale 有新版本更新可用。"
replace_text "gale/src/lib/menu/Updater.svelte" "The update will be downloaded in the background, then the app will restart to apply it." "更新将会在后台自动下载和安装，然后程序将会重启来应用此次更新。"
replace_text "gale/src/lib/menu/Updater.svelte" "Would you like to install it?" "请问要继续更新吗？"
replace_text "gale/src/lib/menu/Updater.svelte" ">Install</BigButton>" ">安装</BigButton>"
replace_text "gale/src/lib/menu/WelcomePopup.svelte" "Welcome to Gale!" "欢迎使用 Gale！"
replace_text "gale/src/lib/menu/WelcomePopup.svelte" "To get started, select a game to mod:" "使用 Gale 第一步，选择一个游戏来管理模组："
replace_text "gale/src/lib/menu/WelcomePopup.svelte" "You can choose to automatically transfer profiles from another mod manager to Gale." "你可以选择从其他模组管理器自动导入整合包至 Gale。"
replace_text "gale/src/lib/menu/WelcomePopup.svelte" "The process may take a couple of minutes, depending on how many mods and profiles there are\n\(\t\+\)to import." "该过程可能需要数分钟，具体取决于要导入的模组和整合包的数量。配置与缓存的模组将同样被导入。" true
replace_text "gale/src/lib/menu/WelcomePopup.svelte" "You can always import profiles later by going to <b>Import \&gt; ...from r2modman</b>." "你也可以等会在 <b>导入 \&gt; 从其他平台导入模组</b> 里自动导入整合包。"
replace_text "gale/src/lib/menu/WelcomePopup.svelte" ">Back</BigButton" ">返回</BigButton"
replace_text "gale/src/lib/menu/WelcomePopup.svelte" ">Skip</BigButton>" ">跳过</BigButton>"
replace_text "gale/src/lib/menu/WelcomePopup.svelte" "Let's make sure your settings are correct." "最后，确保你的设置都是正确的。"
replace_text "gale/src/lib/menu/WelcomePopup.svelte" "You can always edit these later by going to" "你可以随时在此处编辑以下内容："
replace_text "gale/src/lib/menu/WelcomePopup.svelte" "<b>Settings</b>." "<b>设置页面</b>。"
replace_text "gale/src/lib/menu/WelcomePopup.svelte" 'label="Steam executable"' 'label="Steam 路径"'
replace_text "gale/src/lib/menu/WelcomePopup.svelte" "Path to the Steam executable." "启动 Steam 程序的路径。"
replace_text "gale/src/lib/menu/WelcomePopup.svelte" "Steam library" "Steam 库"
replace_text "gale/src/lib/menu/WelcomePopup.svelte" "Path to the Steam game library. This should <b>contain</b> the 'steamapps' directory." "Steam 库的路径。该文件夹内需要<b>包含</b> 'steamapps' 文件夹。"
replace_text "gale/src/lib/menu/WelcomePopup.svelte" "Gale data directory" "Gale 数据文件夹"
replace_text "gale/src/lib/menu/WelcomePopup.svelte" "Directory where mods and profiles are stored." "存放整合包以及其他应用数据的文件夹。"
replace_text "gale/src/lib/menu/WelcomePopup.svelte" ">Next</BigButton>" ">下一步</BigButton>"
replace_text "gale/src/lib/menu/WelcomePopup.svelte" "That's it, you're all set up to start modding!" "没别的了，你可以开始给你的游戏打模组了。"
replace_text "gale/src/lib/menu/WelcomePopup.svelte" "If you have any questions or need help, feel free to ask in the" "如果还有其他问题或需要帮助，欢迎在此处给我们留言："
replace_text "gale/src/lib/menu/WelcomePopup.svelte" "Discord server" "Discord 服务器"
replace_text "gale/src/lib/modlist/InstallProgressPopup.svelte" "Installing mods" "正在安装模组"
replace_text "gale/src/lib/modlist/InstallProgressPopup.svelte" "Are you sure you want to abort the installation?" "你真的确定要终止安装吗？"
replace_text "gale/src/lib/modlist/InstallProgressPopup.svelte" "Done!" "完成！"
replace_text "gale/src/lib/modlist/InstallProgressPopup.svelte" "Downloading {currentName}" "正在下载 {currentName}"
replace_text "gale/src/lib/modlist/InstallProgressPopup.svelte" "Extracting {currentName}" "正在解压 {currentName}"
replace_text "gale/src/lib/modlist/InstallProgressPopup.svelte" "Installing {currentName}" "正在安装 {currentName}"
replace_text "gale/src/lib/modlist/InstallProgressPopup.svelte" "Estimated time remaining: " "预计剩余时间："
replace_text "gale/src/lib/modlist/ModDetails.svelte" "label: 'Close'" "label: '关闭'"
replace_text "gale/src/lib/modlist/ModDetails.svelte" "\tDeprecated" "\t已弃用"
replace_text "gale/src/lib/modlist/ModDetails.svelte" "\tContains NSFW" "\t包含不宜内容"
replace_text "gale/src/lib/modlist/ModDetails.svelte" "Last updated \(.\+\) ago" "上次更新在 \1 前"
replace_text "gale/src/lib/modlist/ModDetails.svelte" "Edit config" "编辑配置"
replace_text "gale/src/lib/modlist/ModDetails.svelte" "\tChangelog" "\t变更日志"
replace_text "gale/src/lib/modlist/ModDetails.svelte" "\tDetails" "\t详情"
replace_text "gale/src/lib/modlist/ModDetails.svelte" "\tDependencies" "\t依赖"
replace_text "gale/src/lib/modlist/ModInfoPopup.svelte" "No {path} found" "{path} 未找到"
replace_text "gale/src/lib/modlist/ModInfoPopup.svelte" "Failed to load {path}" "{path} 载入失败"
replace_text "gale/src/lib/modlist/ModList.svelte" "Open website" "打开网站"
replace_text "gale/src/lib/modlist/ModList.svelte" "label: 'Donate'" "label: '赞赏'"
replace_text "gale/src/lib/modlist/ModList.svelte" "Search for mods..." "搜索模组…"
replace_text "gale/src/lib/modlist/ModList.svelte" "Include categories" "包含分类"
replace_text "gale/src/lib/modlist/ModList.svelte" "Exclude categories" "排除分类"
replace_text "gale/src/lib/modlist/ModList.svelte" 'overrideLabel="Include"' 'overrideLabel="包含"'
replace_text "gale/src/lib/modlist/ModList.svelte" "No mods found" "模组未找到"
replace_text "gale/src/lib/modlist/UpdateAllBanner.svelte" "There {shownUpdates.length === 1 ? 'is' : 'are'}" "当前有"
replace_text "gale/src/lib/modlist/UpdateAllBanner.svelte" "{shownUpdates.length === 1 ? ' update' : ' updates'} available." "个模组可更新。"
replace_text "gale/src/lib/modlist/UpdateAllBanner.svelte" "Update all?" "全部更新？"
replace_text "gale/src/lib/modlist/UpdateAllBanner.svelte" "Confirm update" "确认更新"
replace_text "gale/src/lib/modlist/UpdateAllBanner.svelte" "Select which mods to update:" "选择欲更新的模组："
replace_text "gale/src/lib/modlist/UpdateAllBanner.svelte" 'title="Update all"' 'title="全部更新"'
replace_text "gale/src/lib/modlist/UpdateAllBanner.svelte" "Ignore this update in the 'Update all' list." "在‘全部更新’中忽略该模组的更新。"
replace_text "gale/src/lib/modlist/UpdateAllBanner.svelte" "Update mods" "更新模组"
replace_text "gale/src/lib/prefs/AccentColorPref.svelte" "Accent color" "强调色"
replace_text "gale/src/lib/prefs/AccentColorPref.svelte" "Changes the color of highlighted elements, such as buttons and checkboxes." "更改突出显示元素（例如按钮和复选框）的颜色。"
replace_text "gale/src/lib/prefs/ApiKeyPref.svelte" 'text="Thunderstore API token"' 'text="Thunderstore API 令牌"'
replace_text "gale/src/lib/prefs/ApiKeyPref.svelte" "Thunderstore API token to use for modpack publishing. Once this is set, you will <b>not</b> be able\n\(\t\+\)to view the token again." "用于发布整合包的 Thunderstore API 密钥。设置完后，你将<b>无法</b>再次查看该密钥。" true
replace_text "gale/src/lib/prefs/CustomArgsPref.svelte" "Set custom launch arguments" "设置自定义启动参数"
replace_text "gale/src/lib/prefs/CustomArgsPref.svelte" "Allows you to add custom arguments to the launch command. Depending on <b>Launch mode</b>," "允许您为启动命令添加自定义参数。根据<b>启动模式</b>，"
replace_text "gale/src/lib/prefs/CustomArgsPref.svelte" "these are either ran against the game or steam executable." "这些参数将针对游戏或 Steam 可执行文件运行。"
replace_text "gale/src/lib/prefs/CustomArgsPref.svelte" "Only pass one argument per entry, so instead of <code>--foo value</code>, pass\n\(\t\+\)<code>--foo</code>\n\(\t\+\)and <code>value</code> separately." "每个条目只传递一个参数，比如说 <code>--foo value</code>，请将 <code>--foo</code> 和 <code>value</code> 分开填写。" true
replace_text "gale/src/lib/prefs/LaunchModePref.svelte" "Launch mode" "启动模式"
replace_text "gale/src/lib/prefs/LaunchModePref.svelte" "Determines how the game is launched." "确定游戏的启动方式。"
replace_text "gale/src/lib/prefs/LaunchModePref.svelte" "Launches through the specified platform." "从游戏平台中启动游戏"
replace_text "gale/src/lib/prefs/LaunchModePref.svelte" "Launches the game directly from the executable. Allows you to launch multiple instances\n\(\t\+\)at once." "直接从游戏的可执行文件启动游戏。这将允许一次性启动多个游戏进程。" true
replace_text "gale/src/lib/prefs/LaunchModePref.svelte" "Number of instances" "进程数量上限"
replace_text "gale/src/lib/prefs/LaunchModePref.svelte" "How many instances of the game to launch at once. Only available in direct mode." "设置一次性启动多个游戏进程的数量上限。仅在直接启动模式有效。"
replace_text "gale/src/lib/prefs/LaunchModePref.svelte" "Interval between launches" "游戏启动间隔"
replace_text "gale/src/lib/prefs/LaunchModePref.svelte" "How many seconds to wait between launching each instance. Only applicable in direct mode with\n\(\t\+\)multiple instances." "启动各个游戏进程之间需要等待时间。仅在直接启动多个进程模式有效。" true
replace_text "gale/src/lib/prefs/PathPref.svelte" "'Select '" "'选择 '"
replace_text "gale/src/lib/prefs/PlatformPref.svelte" 'text="Platform"' 'text="平台"'
replace_text "gale/src/lib/prefs/PlatformPref.svelte" "The platform where your game is installed." "游戏所安装的平台。"
replace_text "gale/src/lib/prefs/ZoomFactorPref.svelte" "Zoom factor" "缩放"
replace_text "gale/src/lib/prefs/ZoomFactorPref.svelte" "Changes the zoom level of the app." "修改软件的缩放等级。"
replace_text "gale/src/lib/util.ts" "' years'" "'年'"
replace_text "gale/src/lib/util.ts" "' months'" "'个月'"
replace_text "gale/src/lib/util.ts" "' days'" "'天'"
replace_text "gale/src/lib/util.ts" "' hours'" "'小时'"
replace_text "gale/src/lib/util.ts" "' minutes'" "'分钟'"
replace_text "gale/src/lib/util.ts" "' seconds'" "'秒'"
replace_text "gale/src/routes/browse/+page.svelte" "Already installed" "已安装"
replace_text "gale/src/routes/browse/+page.svelte" '<Icon icon="mdi:download" class="align-middle text-xl" />\n\(\t\+\)Install' '<Icon icon="mdi:download" class="align-middle text-xl" />\n\1安装'
replace_text "gale/src/routes/config/+page.svelte" "Loading config..." "正在加载配置文件…"
replace_text "gale/src/routes/config/+page.svelte" "No config files found" "未找到配置文件"
replace_text "gale/src/routes/config/+page.svelte" "Search for files..." "搜索文件…"
replace_text "gale/src/routes/config/+page.svelte" "This file is in an unsupported format. Please open it in an external program to make\n\(\t\+\)changes." "不支持这种格式的文件。请在外部编辑器中修改。" true
replace_text "gale/src/routes/config/+page.svelte" "Open in external program" "在外部编辑器中打开"
replace_text "gale/src/routes/config/+page.svelte" "An error occured while reading this config file:" "读取该配置文件时出错："
replace_text "gale/src/routes/config/+page.svelte" "Select a config file to start editing" "选择一个配置文件来编辑"
replace_text "gale/src/routes/prefs/+page.svelte" "Global settings" "全局设置"
replace_text "gale/src/routes/prefs/+page.svelte" "Locations" "路径"
replace_text "gale/src/routes/prefs/+page.svelte" 'label="Steam executable"' 'label="Steam 路径"'
replace_text "gale/src/routes/prefs/+page.svelte" "Path to the Steam executable (steam.exe). Used for Steam launching." "Steam 程序（steam.exe）的路径。用于从 Steam 启动。"
replace_text "gale/src/routes/prefs/+page.svelte" 'label="Steam library"' 'label="Steam 库"'
replace_text "gale/src/routes/prefs/+page.svelte" "Path to your default Steam game library. Used to find the location of Steam games." "默认 Steam 游戏库的路径。用于查找和定位 Steam 游戏。"
replace_text "gale/src/routes/prefs/+page.svelte" "Data directory" "数据文件夹"
replace_text "gale/src/routes/prefs/+page.svelte" "Directory where mods and profiles are stored. Changing this will move the existing data." "存放整合包以及其他应用数据的文件夹。变更将会移动现有的数据。"
replace_text "gale/src/routes/prefs/+page.svelte" "Appearance" "外观"
replace_text "gale/src/routes/prefs/+page.svelte" "Miscellaneous" "其他"
replace_text "gale/src/routes/prefs/+page.svelte" "Fetch mods automatically" "自动获取模组"
replace_text "gale/src/routes/prefs/+page.svelte" "Whether to automatically fetch mods every 15 minutes. This will ensure the mod list stays" "是否每15分钟自动更新模组列表。"
replace_text "gale/src/routes/prefs/+page.svelte" "relatively up-to-date, but can be disabled to save bandwidth." "该选项将确保模组列表始终为最新。但你可将其禁用来节省带宽。"
replace_text "gale/src/routes/prefs/+page.svelte" "To manually trigger a fetch, go to <b>File \&gt; Fetch mods</b>." "若要手动获取模组，请前去 <b>文件 \&gt; 获取模组</b>。"
replace_text "gale/src/routes/prefs/+page.svelte" "name} settings" "name} 设置"
replace_text "gale/src/routes/prefs/+page.svelte" "Game directory" "游戏文件夹"
replace_text "gale/src/routes/prefs/+page.svelte" "Override directory" "覆盖默认文件夹"
replace_text "gale/src/routes/prefs/+page.svelte" "Overrides the path to the \(.\+\) game directory." "覆盖 \1 的默认游戏文件夹。"
replace_text "gale/src/routes/prefs/+page.svelte" "If unset, Gale will try to find it through the specified Steam library instead." "如果未设置，Gale 将尝试通过指定的 Steam 库来查找它。"
replace_text "gale/src/routes/prefs/+page.svelte" "<SmallPrefsHeading>Launch</SmallPrefsHeading>" "<SmallPrefsHeading>启动</SmallPrefsHeading>"
replace_text "gale/src/routes/+layout.svelte" "Manage profile" "管理整合包"
replace_text "gale/src/routes/+layout.svelte" "Browse Thunderstore mods" "浏览 Thunderstore 模组"
replace_text "gale/src/routes/+layout.svelte" "Edit mod config" "编辑模组配置"
replace_text "gale/src/routes/+layout.svelte" "Export modpack" "发布整合包"
replace_text "gale/src/routes/+layout.svelte" "Edit manager settings" "编辑管理器设置"
replace_text "gale/src/routes/+page.svelte" "label: 'Uninstall'" "label: '卸载'"
replace_text "gale/src/routes/+page.svelte" "label: 'Change version'" "label: '变更版本'"
replace_text "gale/src/routes/+page.svelte" "label: 'Show dependants'" "label: '显示依赖'"
replace_text "gale/src/routes/+page.svelte" "label: 'Open directory'" "label: '打开文件夹'"
replace_text "gale/src/routes/+page.svelte" "Update to" "更新到"
replace_text "gale/src/routes/+page.svelte" "The following {unknownMods.length === 1 ? 'mod' : 'mods'} could not be found:" "无法找到以下模组："
replace_text "gale/src/routes/+page.svelte" "Uninstall them?" "全部卸载？"
replace_text "gale/src/routes/+page.svelte" "No dependants found" "未找到依赖"
replace_text "gale/src/routes/+page.svelte" "Confirm uninstallation" "确认卸载"
replace_text "gale/src/routes/+page.svelte" 'verb="Uninstall"' 'verb="卸载"'
replace_text "gale/src/routes/+page.svelte" "The following mods depend on %s and will likely not work if it is uninstalled:" "以下模组依赖于 %s，如果它被卸载则以下模组可能无法正常工作:"
replace_text "gale/src/routes/+page.svelte" "Confirm disabling" "确认禁用"
replace_text "gale/src/routes/+page.svelte" 'verb="Disable"' 'verb="禁用"'
replace_text "gale/src/routes/+page.svelte" "The following mods depend on %s and will likely not work if it is disabled:" "以下模组依赖于 %s，如果它被禁用则以下模组可能无法正常工作："
replace_text "gale/src/routes/+page.svelte" "Confirm enabling" "确认启用"
replace_text "gale/src/routes/+page.svelte" 'verb="Enable"' 'verb="启用"'
replace_text "gale/src/routes/+page.svelte" "%s depends on the following disabled mods, and will likely not work if any of them are disabled:" "%s 依赖于以下被禁用的模组，如果其中任何一个被禁用则可能无法正常工作："

# replace update keys & url
replace_text "gale/src-tauri/tauri.conf.json" "dW50cnVzdGVkIGNvbW1lbnQ6IG1pbmlzaWduIHB1YmxpYyBrZXk6IDNDRkNCMzE4NDIyOTQ1QjQKUldTMFJTbENHTFA4UE9Fd1RocjRDRm9uVmdiUlUxdmw1ZEwvaXRJZW45VFVSeXozUkYxaUFmZEsK" "dW50cnVzdGVkIGNvbW1lbnQ6IG1pbmlzaWduIHB1YmxpYyBrZXk6IEFFMzRDNkRBRjQyM0YwNDUKUldSRjhDUDAyc1kwcnVCOUpnd3hIUkVEU2l5TXRlRm1Uc0NQWFZMQjhZa2ZJRVlkaXk5NGpaSWMK"
replace_text "gale/src-tauri/tauri.conf.json" "https://gist.githubusercontent.com/Kesomannen/58b4f08009e7b7b5baaea253ebccb94d/raw/" "https://ghproxy.summonhim.top/https://gist.github.com/SummonHIM/48ae7ddf5b7bd612ed2108b2f94b4eb9/raw/gale-latest.json"

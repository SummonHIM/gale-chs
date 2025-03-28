const dropdowns: Record<string, string> = {
	'Ascending': '正序',
	'Descending': '倒序',
	'Custom': '自定义',
	'Install date': '安装日期',
	'Last updated': '上次更新',
	'Newest': '最近发布',
	'Disk space': '磁盘空间',
	'Name': '名称',
	'Author': '作者',
	'Rating': '评分',
	'Downloads': '下载',
	'Deprecated': '已弃用',
	'NSFW': '不宜内容',
	'Enabled': '已启用',
	'Disabled': '已禁用',
	'Launcher': '启动器启动',
	'Direct': '直接启动',
	'Red': '红色',
	'Orange': '橙色',
	'Amber': '琥珀色',
	'Yellow': '黄色',
	'Lime': '青柠色',
	'Green': '绿色',
	'Emerald': '翠绿色',
	'Teal': '蓝绿色',
	'Cyan': '青色',
	'Sky': '天蓝色',
	'Blue': '蓝色',
	'Indigo': '靛蓝色',
	'Violet': '紫罗兰色',
	'Purple': '紫色',
	'Fuchsia': '紫红色',
	'Pink': '粉色',
	'Rose': '玫瑰色',
	'Slate': '板岩色',
	'Gray': '灰色',
	'Zinc': '锌色',
	'Neutral': '中性色',
	'Stone': '石色'
};

const menubar: Record<string, string> = {
	'Rename': '重命名',
	'Duplicate': '复制'
}

const colorPref: Record<string, string> = {
	'Accent': '强调',
	'Primary': '主'
}

export function translate_dropdowns(text: string): string {
	return dropdowns[text] || text;
}

export function translate_menubar(text: string): string {
	return menubar[text] || text;
}

export function translate_color_pref(text: string): string {
	return colorPref[text] || text;
}

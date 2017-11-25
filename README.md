# 整合第三方api到rails应用中
* 第三方[聚合数据](https://www.juhe.cn)
三个目标：
1. 建立一个 City model，然后把 API 抓取回来的城市资料存进数据库 (m 数据储存) c
2. 新增 cities controller 和页面，让用户可以浏览城市资料 (v 显示) r
3. 用户可以更新指定城市的气温资讯 (c 业务逻辑) u, d

# YAML格式
注意事项：
*YAML 格式使用空白缩排来表达资料的阶层关系，请务必缩排整齐
*YAML 格式会区分数字和字串，例如 01234 会看成 1234，如果要确保被解析成字串，请加上引号，例如"01234"
*读出来的 Hash 是用字串 key，不是 symbol key。是 JUHE_CONFIG["api_key"]而不是 JUHE_CONFIG[:api_key]

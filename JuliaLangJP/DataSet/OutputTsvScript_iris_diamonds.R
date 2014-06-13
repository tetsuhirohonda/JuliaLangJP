
# ### memo ### 
# windows server 2012 で実行した。
# なのでtsvファイルの改行コードは\r\n 。


# ### iris ###

iris2 <- iris
# 列名のドットを削除。あと、大文字を小文字に変換。
colnames(iris2) <- gsub(x = tolower(colnames(iris)), pattern = '\\.' , replacement = '')

write.table(
	iris2,
	file = 'iris.tsv',
	append = FALSE,
	quote = FALSE,
	sep = "\t",
	qmethod = "escape",
	row.names = FALSE,
    col.names = TRUE
)


# ### diamonds ###

library(ggplot2)
data(diamonds)

write.table(
	diamonds,
	file = 'diamonds.tsv',
	append = FALSE,
	quote = FALSE,
	sep = "\t",
	qmethod = "escape",
	row.names = FALSE,
    col.names = TRUE
)


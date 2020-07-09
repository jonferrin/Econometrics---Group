library(magrittr)
library(officer)
library(ggplot2)

gg1 <- ggplot(data = iris, aes(Sepal.Length, Petal.Length)) + 
  geom_point()
gg2 <- ggplot(data = iris, aes(Sepal.Length, Petal.Length, color = Species)) + 
  geom_point()

my_doc <- read_docx() 
styles_info(my_doc)

src <- tempfile(fileext = ".png")
png(filename = src, width = 5, height = 6, units = 'in', res = 300)
barplot(1:10, col = 1:10)
dev.off()

my_doc <- my_doc %>% 
  body_add_img(src = src, width = 5, height = 6, style = "centered") %>% 
  body_add_par("Hello world!", style = "Normal") %>% 
  body_add_par("", style = "Normal") %>% # blank paragraph
  body_add_table(iris, style = "table_template")

print(my_doc, target = "assets/docx/first_example.docx")
read_docx() %>% print(target = tempfile(fileext = ".docx"









doc <- read_docx() %>% 
  body_add_par(value = "Table of content", style = "heading 1") %>% 
  body_add_toc(level = 2) %>% 
  
  body_add_par(value = "Tables", style = "heading 1") %>% 
  body_add_par(value = "dataset mtcars", style = "heading 2") %>% 
  body_add_table(value = head(mtcars)[, 1:4], style = "table_template" ) %>% 
  body_add_par(value = "data mtcars", style = "table title") %>% 
  shortcuts$slip_in_tableref(depth = 2) %>%
  
  body_add_par(value = "dataset iris", style = "heading 2") %>% 
  body_add_table(value = head(iris), style = "table_template" ) %>% 
  body_add_par(value = "data iris", style = "table title") %>% 
  shortcuts$slip_in_tableref(depth = 2) %>%
  
  body_end_section_portrait() %>% 
  
  body_add_par(value = "plot examples", style = "heading 1") %>% 
  body_add_gg(value = gg1, style = "centered" ) %>% 
  body_add_par(value = "graph example 1", style = "graphic title") %>% 
  shortcuts$slip_in_plotref(depth = 1) %>%
  
  body_add_par(value = "plot 2", style = "heading 2") %>% 
  body_add_gg(value = gg2, style = "centered" ) %>% 
  body_add_par(value = "graph example 2", style = "graphic title") %>% 
  shortcuts$slip_in_plotref(depth = 2) %>%
  
  body_end_section_landscape() %>% 
  
  body_add_par(value = "Table of tables", style = "heading 2") %>% 
  body_add_toc(style = "table title") %>% 
  body_add_par(value = "Table of graphics", style = "heading 2") %>% 
  body_add_toc(style = "graphic title")

print(doc, target = "assets/docx/toc_and_captions.docx")

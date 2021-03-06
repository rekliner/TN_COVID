################################################################################
### Graph:  COVID-19 Total Recovered
################################################################################\

new_num <- recovered_data %>% tail(n = 1) %>% select("total_recovered") %>% pull() %>% format(big.mark = ",", scientific = FALSE)

graph_total_recover <- ggplot(data = recovered_data, aes(x = as.Date(date), y = total_recovered)) +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45)) +
  theme(axis.text.x = element_text(vjust = 0.7)) +
  theme(axis.text.x = element_text(hjust = 0.8)) +
  theme(legend.title = element_blank()) +
  theme(legend.position = "none") +
    geom_point(data = recovered_data, shape = 19, size = 0.5,
             aes(x = as.Date(date), y = total_recovered), color = "black") +
  scale_x_date(#date_breaks = "3 days",
               date_labels = "%m/%d") +
  #  graph_log10_opts1 +
  #  graph_log10_opts2 +
  labs(title = paste("Total Recovered: ", new_num, sep = ""), x = "", y = "")
#print(graph_total_recover)

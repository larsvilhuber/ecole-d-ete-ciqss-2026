

```{r qrcode}
#| echo: false
#| message: false
#| warning: false

code <- qr_code(WEBSITE_URL)
png(filename="qrcode.png")
plot(code)
invisible(dev.off())

#plot(code)


```

library(data.table)
library(pdftools)
library(stringr)

text <- strsplit(pdf_text("resources/Necromunda_Underhive_2017_rules_en.pdf"), split = "\n")

## Construct d_fighters
  d_fighters <- data.table(gang = character(),type = character(),
                           mv= integer(),ws=integer(),bs=integer(),
                           str=integer(),tgh=integer(),wnd=integer(),ini=integer(),
                           att=integer(),ld=integer(),cl=integer(),wil=integer(),int=integer())
  
  ## Cawdor
  gng <- 'cawdor'
  page <- 31
  
  line <- grep('Leader\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'leader'), ins))
  
  line <- grep('Champions\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'champion'), ins))
  
  line <- grep('Juves\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'juve'), ins))
  
  line <- grep('Gangers\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'ganger'), ins))
  
  ## Delaque
  gng <- 'delaque'
  page <- 33
  
  line <- grep('Leader\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'leader'), ins))
  
  line <- grep('Champions\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'champion'), ins))
  
  line <- grep('Juves\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'juve'), ins))
  
  line <- grep('Gangers\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'ganger'), ins))
  
  ## Escher
  gng <- 'escher'
  page <- 35
  
  line <- grep('Leader\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'leader'), ins))
  
  line <- grep('Champions\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'champion'), ins))
  
  line <- grep('Juves\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'juve'), ins))
  
  line <- grep('Gangers\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'ganger'), ins))
  
  ## Goliath
  gng <- 'goliath'
  page <- 37
  
  line <- grep('Leader\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'leader'), ins))
  
  line <- grep('Champions\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'champion'), ins))
  
  line <- grep('Juves\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'juve'), ins))
  
  line <- grep('Gangers\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'ganger'), ins))
  
  ## Orlock
  gng <- 'orlock'
  page <- 39
  
  line <- grep('Leader\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'leader'), ins))
  
  line <- grep('Champions\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'champion'), ins))
  
  line <- grep('Juves\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'juve'), ins))
  
  line <- grep('Gangers\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'ganger'), ins))
  
  ## Van Saar
  gng <- 'vansaar'
  page <- 41
  
  line <- grep('Leader\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'leader'), ins))
  
  line <- grep('Champions\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'champion'), ins))
  
  line <- grep('Juves\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'juve'), ins))
  
  line <- grep('Gangers\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'ganger'), ins))
## Construct d_profiles
  d_profiles <- data.table(name = character(),
                          shrt_rng = character(),
                          lng_rng = character(),
                          shrt_acc = character(),
                          lng_acc = character(),
                          str = character(),
                          ap = character(),
                          dmg = character(),
                          ammo = character(),
                          trts = character())
  
  for(page in 85:91){
    
    print(page)
    
    tmp <- unlist(lapply(text[[page]][grep(' - .*\\,.*$',text[[page]])],function(x)
      regexpr("\\+[^\\.^\\+]*$", x)[1]
      #gsub("^\\s+|\\s+$", "",substring(x,c(1,25,55),c(24,54,nchar(x))))
      ))
    
    stop <- max(tmp)
    
    tmp <- unlist(lapply(text[[page]][grep(' - .*\\,.*$',text[[page]])],function(x)
      regexpr("( [0-9]+).*$", x, useBytes = F)[1]
      #gsub("^\\s+|\\s+$", "",substring(x,c(1,25,55),c(24,54,nchar(x))))
    ))
    
    start <- min(tmp[tmp != -1])
    
    if(start>40){
      tmp <- unlist(lapply(text[[page]][grep(' - .*\\,.*$',text[[page]])],function(x)
        regexpr("( - ).*$", x, useBytes = F)[1]
        #gsub("^\\s+|\\s+$", "",substring(x,c(1,25,55),c(24,54,nchar(x))))
      ))
      
      start <- min(tmp[tmp != -1])
    }
    
    wip_page <- lapply(text[[page]][grep(' - .*\\,.*$',text[[page]])],function(x)
      gsub("^\\s+|\\s+$", "",substring(x,c(1,start,stop+1),c(start-1,stop,nchar(x)))))
    
    list_of_profiles <- lapply(wip_page, function(x) c(list(x[1]),
                                   c(rep('-',8-length(unlist(str_extract_all(x[2], "[[:alnum:][:punct:][//+]]+"))))
                                     ,unlist(str_extract_all(x[2], "[[:alnum:][:punct:][//+]]+"))),
                                   list(x[3])))
    
    nice_lop <- as.data.table(do.call(rbind,list_of_profiles))
    names(nice_lop)<- c('name',
                        'shrt_rng',
                        'lng_rng',
                        'shrt_acc',
                        'lng_acc',
                        'str',
                        'ap',
                        'dmg',
                        'ammo',
                        'trts')
    
    d_profiles <- rbind(d_profiles, as.data.table(nice_lop))
  }


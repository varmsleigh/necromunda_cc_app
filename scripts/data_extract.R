library(data.table)
library(pdftools)
library(stringr)

text <- strsplit(pdf_text("resources/Necromunda_Underhive_2017_rules_en.pdf"), split = "\n")

## Construct d_fighters
  d_fighters <- data.table(gang = character(),type = character(),
                           mv= integer(),ws=integer(),bs=integer(),
                           str=integer(),tgh=integer(),wnd=integer(),ini=integer(),
                           att=integer(),ld=integer(),cl=integer(),wil=integer(),int=integer(), prim=list(), sec=list())
  
  ## Cawdor
  gng <- 'cawdor'
  page <- 31
  
  line <- grep('Leader\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'leader'), ins,list('Brawn, Leadership, Combat'),list('Ferocity, Savant')))
  
  line <- grep('Champions\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'champion'), ins,list('Brawn, Combat'),list('Leadership, Ferocity, Agility')))
  
  line <- grep('Juves\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'juve'), ins,list('Ferocity'),list('Combat, Agility')))
  
  line <- grep('Gangers\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'ganger'), ins,list('Ferocity, Combat'),list('Brawn, Agility')))
  
  ## Delaque
  gng <- 'delaque'
  page <- 33
  
  line <- grep('Leader\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'leader'), ins,list('Leadership, Cunning, Agility'),list('Shooting, Savant')))
  
  line <- grep('Champions\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'champion'), ins,list('Cunning, Shooting'),list('Leadership, Savant, Agility')))
  
  line <- grep('Juves\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'juve'), ins,list('Cunning'),list('Shooting, Agility')))
  
  line <- grep('Gangers\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'ganger'), ins,list('Cunning, Shooting'),list('Combat, Agility')))
  
  ## Escher
  gng <- 'escher'
  page <- 35
  
  line <- grep('Leader\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'leader'), ins,list('Leadership, Combat, Agility'),list('Cunning, Ferocity')))
  
  line <- grep('Champions\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'champion'), ins,list('Combat, Agility'),list('Cunning, Ferocity, Leadership')))
  
  line <- grep('Juves\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'juve'), ins,list('Agility'),list('Cunning, Combat')))
  
  line <- grep('Gangers\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'ganger'), ins,list('Combat, Agility'),list('Cunning, Ferocity')))
  
  ## Goliath
  gng <- 'goliath'
  page <- 37
  
  line <- grep('Leader\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'leader'), ins,list('Leadership, Ferocity, Brawn'),list('Combat, Shooting')))
  
  line <- grep('Champions\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'champion'), ins,list('Ferocity, Brawn'),list('Leadership, Combat, Shooting')))
  
  line <- grep('Juves\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'juve'), ins,list('Ferocity'),list('Brawn, Agility')))
  
  line <- grep('Gangers\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'ganger'), ins,list('Ferocity, Brawn'),list('Combat, Shooting')))
  
  ## Orlock
  gng <- 'orlock'
  page <- 39
  
  line <- grep('Leader\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'leader'), ins,list('Leadership, Ferocity, Savant'),list('Brawn, Shooting')))
  
  line <- grep('Champions\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'champion'), ins,list('Ferocity, Savant'),list('Leadership, Brawn, Shooting')))
  
  line <- grep('Juves\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'juve'), ins,list('Ferocity'),list('Savant, Shooting')))
  
  line <- grep('Gangers\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'ganger'), ins,list('Ferocity, Savant'),list('Brawn, Shooting')))
  
  ## Van Saar
  gng <- 'vansaar'
  page <- 41
  
  line <- grep('Leader\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'leader'), ins,list('Leadership, Shooting, Savant'),list('Cunning, Agility')))
  
  line <- grep('Champions\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- as.vector(ins[ins != ''])
  d_fighters <- rbind(d_fighters,c(list(gng,'champion'), ins,list('Shooting, Savant'),list('Leadership, Cunning, Combat')))
  
  line <- grep('Juves\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'juve'), ins,list('Agility'),list('Shooting, Savant')))
  
  line <- grep('Gangers\\.\\.',text[[page]])+2
  ins <- unlist(strsplit(gsub("\\+","",gsub("’","",text[[page]][line]))," "))
  ins <- ins[ins != '']
  d_fighters <- rbind(d_fighters,c(list(gng,'ganger'), ins,list('Shooting, Savant'),list('Cunning, Combat')))
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
    
    tmp <- unlist(lapply(text[[page]][grep(' - .*.*$',text[[page]])],function(x)
      regexpr("\\+[^\\.^\\+]*$", x)[1]
      #gsub("^\\s+|\\s+$", "",substring(x,c(1,25,55),c(24,54,nchar(x))))
      ))
    
    stop <- max(tmp)
    
    tmp <- unlist(lapply(text[[page]][grep(' - .*.*$',text[[page]])],function(x)
      regexpr("( [0-9]+).*$", x, useBytes = F)[1]
      #gsub("^\\s+|\\s+$", "",substring(x,c(1,25,55),c(24,54,nchar(x))))
    ))
    
    start <- min(tmp[tmp != -1])
    
    if(start>40){
      tmp <- unlist(lapply(text[[page]][grep(' - .*.*$',text[[page]])],function(x)
        regexpr("( - ).*$", x, useBytes = F)[1]
        #gsub("^\\s+|\\s+$", "",substring(x,c(1,25,55),c(24,54,nchar(x))))
      ))
      
      start <- min(tmp[tmp != -1])
    }
    
    wip_page <- lapply(text[[page]][grep(' - .*.*$',text[[page]])],function(x)
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
  
## Output
  
  fwrite(d_fighters,"resources/d_fighters.csv")
  fwrite(d_profiles,"resources/d_profiles.csv")
  

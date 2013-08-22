#!/usr/bin/env coffee

path     = require "path"
fs       = require "fs"
readline = require "readline"
util     = require "util"
optimist = require("optimist")
            .usage('Convert a DEK file to various formats.\n\nUsage: pile /path/to/file.dek')


unless process.argv[2]
  optimist.showHelp()
  process.exit(1)

reader = readline.createInterface {
  input: fs.createReadStream(process.argv[2], 'utf8')
  output: process.stdout
  terminal: false
}

baseName  = path.basename(process.argv[2],'.dek')
dirName   = path.dirname(process.argv[2])
newFileName = "#{dirName}/#{baseName}"

cards = []
reader
  .on 'line', (line)->
    CARDREGEXP = /(cards((\s+\w+=\"[^\"]+\")+))/im
    hit = CARDREGEXP.exec(line)
    if hit isnt null
      card = hit[1].trim().split(/Cards\s|"\s|\=\"|\"/)
      card.splice(0,1)
      card.splice(0,1)
      card.splice(1,1)
      card.splice(2,1)
      card.splice(3,1)
      card.splice(4,1)
      cards.push(card)
  .on 'close',()->
    writeFile("#{newFileName}.dec",renderDec(cards))
    writeFile("#{newFileName}-deckstats.txt", renderDeckStats(cards))
    writeFile("#{newFileName}-BBCode.txt", renderBBCode(cards))

writeFile = (location, text)->
  console.log "Writing #{location}..."

  try
    fs.writeFileSync location, text
  catch error
    console.log error

  console.log "Done."


renderDec = (cards)->
  deckText = ""

  cards.forEach (card)->
    if card[2] is "false"
      location = "Deck"
    else
      location = "SB"

    if location is "SB" then deckText +="SB: "
    deckText += "#{card[1]} #{card[3]}\n"

  return deckText

renderDeckStats = (cards)->
  deckText = ""
  sideArr = []
  deckArr = []

  appendCard = (card)->
    deckText += "#{card[1]} #{card[3]}\n"

  cards.forEach (card)->
    if card[2] is "false" then deckArr.push(card) else sideArr.push(card)

  deckArr.forEach(appendCard)
  if sideArr.length > 0
    deckText += "\n//Sideboard\n"
    sideArr.forEach(appendCard)

  return deckText

renderBBCode = (cards)->
  deckText = "[DECK= #{baseName}]\n"
  sideArr = []
  deckArr = []

  appendCard = (card)->
    deckText += "#{card[1]} #{card[3]}\n"

  cards.forEach (card)->
    if card[2] is "false" then deckArr.push(card) else sideArr.push(card)

  deckArr.forEach(appendCard)
  if sideArr.length > 0
    deckText += "\nSideboard\n"
    sideArr.forEach(appendCard)
  deckText += "[/DECK]\n"

  return deckText

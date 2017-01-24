module.exports = (robot) ->

  robot.hear /^random-bot\s.+?,.+?$/i, (res) ->
    data = res.match[0].replace("random-bot ", "")
    array = data.split(",")
    i = array.length
    if i is 0 then return false
    while --i
      j = Math.floor Math.random() * (i + 1)
      tmpi = array[i]
      tmpj = array[j]
      array[i] = tmpj
      array[j] = tmpi
    res.send "コンカイ ノ ジュンバン ハ、\n" + array.join("\n")

  robot.hear /^random-bot\s.+?\s.+?$/i, (res) ->
    data = res.match[0].replace("random-bot ", "")
    array = data.split(" ")
    i = array.length
    if i is 0 then return false
    while --i
      j = Math.floor Math.random() * (i + 1)
      tmpi = array[i]
      tmpj = array[j]
      array[i] = tmpj
      array[j] = tmpi
    res.send "コンカイ ノ ジュンバン ハ、\n" + array.join("\n")

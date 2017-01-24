module.exports = (robot) ->

  # robot.hear /^.+?,.+?$/i, (res) ->
  #   array = res.match[0].split(",")
  #   i = array.length
  #   if i is 0 then return false
  #   while --i
  #     j = Math.floor Math.random() * (i + 1)
  #     tmpi = array[i]
  #     tmpj = array[j]
  #     array[i] = tmpj
  #     array[j] = tmpi
  #   res.send array

  robot.hear /(sushi|すし|スシ|寿司)/i, (msg) ->
    msg.send "スシが食べたい。"

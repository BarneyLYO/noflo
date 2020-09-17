noflo = require '../../../../src/lib/NoFlo'

exports.getComponent = () ->
  c = new noflo.Component()
  c.description = 'Repeat stuff async'
  c.icon = 'forward'
  c.inPorts.add 'in'
  c.outPorts.add 'out'
  c.process (input, output) ->
    data = input.getData 'in'
    setTimeout ->
      output.sendDone
        out: data
    , 0

SANCTUS = "f'X d'X e'X d'X^\\prall c'X bX e'X bX c'X d'X^\\prall aX d'X".split(' ')

'''
trip
8th
quin
16th
non
16thquin
16thtup
qtrip
32nd
4th
'''

def _sublistize(pat, N) :
  return [pat[n:n+N] for n in range(0, len(pat), N)]

def _genTup(pat, t, N, T, U, tuplet = True) :
    subList = _sublistize(pat, N)
    return ' '.join([('\\times '+T +" { " if tuplet else '') + ' '.join([y.replace('X',U) for y in x]) + (' } ' if tuplet else '') for x in subList])

def _timeize(pat, t) :
  if (t == 'trip') :
    return _genTup(pat, t, 3, '2/3', '8')
  if (t == 'qtrip') :
    return _genTup(pat, t, 3, '2/3', '4')
  if (t == '16thquin') :
    return _genTup(pat, t, 10, '8/10', '16')
  if (t == '16thtup') :
    return _genTup(pat, t, 6, '4/6', '16')
  if (t == 'non') :
    return _genTup(pat, t, 9, '8/9', '16')
  if (t == 'quin') :
    return _genTup(pat, t, 5, '4/5', '8')
  if (t == '8th') :
    return _genTup(pat, t, 2, '', '8', False)
  if (t == '16th') :
    return _genTup(pat, t, 4, '', '16', False)
  if (t == '32nd') :
    return _genTup(pat, t, 8, '', '32', False)
  if (t == '4th') :
    return _genTup(pat, t, 1, '', '4', False)
  raise ValueError('unknown time')

def make(key,pat,t,nr = 0, offset = 0) :
  notes = [[SANCTUS[y + (0 if x > 0 else offset)] for y in range(pat[x])] for x in range(len(pat))]
  for x in notes :
    x[-1] = x[-1]+'-!'
  notes = sum(notes,[])
  for x in range(nr) :
    notes = ['rX'] + notes
  return '''\\transpose c {0} {{ {1} }}
  {2}'''.format(key, _timeize(notes,t), ' '.join(['Sa' if x == 1 else 'Sa __ '+(' '.join(['_' for y in range(x-1)])) for x in pat]))

if __name__ == '__main__' :
  print make("gis,,",[12,12,12], 'qtrip', 0)
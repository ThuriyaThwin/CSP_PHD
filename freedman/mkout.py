import sys

topics = [line.strip() for line in sys.stdin.readlines()]


for topic in topics:
	print """
<div class="slide">
  <h1>Outline: %s</h1>
  <ul>""" % topic
	for tpc in topics:
		print "    <li>%s</li>" % (topic==tpc and ("<b>%s</b>" % tpc) or tpc)
	print """\
  </ul>
  <div class="handout">
	[any material that should appear in print but not on the slide]
  </div>
</div>"""


		

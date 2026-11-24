verify:
	@python3 -c "s=open('/output/entry.txt',encoding='utf-8').read().rstrip('\n'); assert 1<=len(s)<=200 and s.strip(), 'gate failed: len=%d' % len(s); print('valid, %d chars' % len(s))"

bundle:
	node cli/makefun.mjs bundle

check:
	node cli/makefun.mjs check
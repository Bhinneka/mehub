.PHONY : install dep build 

install: dep build

dep:
	mix deps.get

build:
	mix escript.build
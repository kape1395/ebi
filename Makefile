REBAR=rebar

all: compile release

deps:
	$(REBAR) get-deps
	$(REBAR) update-deps
	cd deps/ebi_web; git submodule init; git submodule update; git submodule status

release:
	$(REBAR) generate

compile:
	$(REBAR) compile

clean:
	$(REBAR) clean

clean-rel:
	rm -rf rel/ebi

clean-deps:
	rm -rf deps

.PHONY: all deps release compile clean clean-rel clean-deps

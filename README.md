% ebi
% Karolis Petrauskas <k.petrauskas@gmail.com>
% 2013-05-04


Introduction
============

This package generates EBI release.



Building and running
====================

Get dependencies, compile and generate the release:

    make deps
    make compile
    make release

Initialize mnesia DB:

    rel/ebi/bin/ebi console_clean
        ebi_store:install([node()]).
        init:stop().

Start in the interactive mode:

    rel/ebi/bin/ebi console



References
==========

See [rebar-release-upgrade-caveats](http://mokele.co.uk/2011/07/01/rebar-release-upgrade-caveats.html) for more details.



% ebi
% Karolis Petrauskas <k.petrauskas@gmail.com>
% 2013-05-04


Introduction
============

This package generates EBI release.



Building and running
====================

Build dependencies:

    sudo apt-get install esl-erlang
    sudo apt-get install gcc g++ libpam0g-dev
    # build rebar, make it available on the $PATH

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



Running EBI WEB under apache
============================

Add the following lines in the apache site definition (e.g. /etc/apache2/sites-enabled/default):

    ProxyPass        /ebi/ http://localhost:13950/ebi/
    ProxyPassReverse /ebi/ http://localhost:13950/ebi/

then:

    sudo a2enmod proxy_http 
    sudo invoke-rc.d apache2 restart



References
==========

See [rebar-release-upgrade-caveats](http://mokele.co.uk/2011/07/01/rebar-release-upgrade-caveats.html) for more details.




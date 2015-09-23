#!/bin/sh
cd /opt/stack/tempest
testr init
sudo apt-get autoremove -y python-six
testr run tempest.api.network --subunit | subunit-trace --no-failure-debug -f
subunit2html .testrepository/tempestapinetwork run1.html


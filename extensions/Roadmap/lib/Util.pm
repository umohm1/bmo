# -*- Mode: perl; indent-tabs-mode: nil -*-
#
# The contents of this file are subject to the Mozilla Public
# License Version 1.1 (the "License"); you may not use this file
# except in compliance with the License. You may obtain a copy of
# the License at http://www.mozilla.org/MPL/
#
# Software distributed under the License is distributed on an "AS
# IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or
# implied. See the License for the specific language governing
# rights and limitations under the License.
#
# The Original Code is the Roadmap Bugzilla Extension.
#
# The Initial Developer of the Original Code is Mozilla Foundation
# Portions created by the Initial Developer are Copyright (C) 2011 the
# Initial Developer. All Rights Reserved.
#
# Contributor(s):
#   Dave Lawrence <dkl@mozilla.com>

package Bugzilla::Extension::Roadmap::Util;
use strict;
use base qw(Exporter);
our @EXPORT = qw(
    clean_search_url    
);

sub clean_search_url {
    my $cgi = shift;

    # Run the cleaning routine in Bugzilla::CGI first to fix
    # any common issues.
    $cgi->clean_search_url;

    # Remove any mention of bug_status as we will be adding
    # that later for getting the stats.
    $cgi->delete('bug_status');

    return $cgi;
}

1;
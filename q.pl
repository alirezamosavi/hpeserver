use strict;
use HTML::TreeBuilder;  # make sure our version isn't ancient
my $root = HTML::TreeBuilder->new_from_file("q.html");
open(FH, '>>', 'h2.txt');
my @bolds = $root->find_by_tag_name("h2");
foreach my $node (@bolds) {
  my $tt1 = $node->as_text( );
  print FH $tt1;
  print FH "\n";

}
close(FH);
open(FH, '>>', 'h4.txt');
my @bolds = $root->find_by_tag_name("h4");
foreach my $node (@bolds) {
  my $tt1 = $node->as_text( );
  print FH $tt1;
  print FH "\n";

}
close(FH);


package Data::RandomPass;

use 5.008;
use strict;
use warnings;

our $VERSION = '0.01';
our @ISA = qw(Exporter);

use vars qw(@EXPORT_OK);

require Exporter;
@EXPORT_OK = qw(GeneratePass);  

sub GeneratePass {

	my ($long) = @_;

	my(@RPASS) = ("1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G",
	"H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z",
	"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s",
	"t","u","v","w","x","y","z");
	
	my $x = 0;
	my $pw;
	my $xx;
	
	while ($x ne $long) {
		$xx = rand(@RPASS);
		$pw = $pw . $RPASS[$xx];
		$x++;
	}
	return $pw;
}

1;




__END__

=head1 NAME

Data::RandomPass

=head1 SYNOPSIS

	use Data::RandomPass qw(GeneratePass);

	my $x = GeneratePass(number of chars long); 

=head1 DESCRIPTION

RandomPass generates a random password.

=head1 AUTHOR

Michael J. Flickinger, E<lt>mjflick@cpan.orgE<gt>

=cut

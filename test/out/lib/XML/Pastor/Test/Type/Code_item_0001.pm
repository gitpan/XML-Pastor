
#PASTOR: Code generated by XML::Pastor/1.0.4 at 'Sat Dec  1 23:13:04 2012'

use utf8;
use strict;
use warnings;
no warnings qw(uninitialized);

use XML::Pastor;



#================================================================

package XML::Pastor::Test::Type::Code_item_0001;

use XML::Pastor::Test::Type::Code_item_0002;
use XML::Pastor::Test::Type::Code_item_0003;

our @ISA=qw(XML::Pastor::Builtin::Union);

XML::Pastor::Test::Type::Code_item_0001->XmlSchemaType( bless( {
         'base' => 'Union|http://www.w3.org/2001/XMLSchema',
         'baseClasses' => [
                            'XML::Pastor::Builtin::Union'
                          ],
         'class' => 'XML::Pastor::Test::Type::Code_item_0001',
         'contentType' => 'simple',
         'derivedBy' => 'union',
         'isRedefinable' => 1,
         'memberClasses' => [
                              'XML::Pastor::Test::Type::Code_item_0002',
                              'XML::Pastor::Test::Type::Code_item_0003'
                            ],
         'memberTypes' => 'Code_item_0002 Code_item_0003',
         'metaClass' => 'XML::Pastor::Test::Pastor::Meta',
         'name' => 'Code_item_0001',
         'nameIsAutoGenerated' => 1,
         'scope' => 'local',
         'targetNamespace' => 'http://www.example.com/country'
       }, 'XML::Pastor::Schema::SimpleType' ) );

1;


__END__



=head1 NAME

B<XML::Pastor::Test::Type::Code_item_0001>  -  A class generated by L<XML::Pastor> . 


=head1 ISA

This class descends from L<XML::Pastor::Builtin::Union>.


=head1 CODE GENERATION

This module was automatically generated by L<XML::Pastor> version 1.0.4 at 'Sat Dec  1 23:13:04 2012'


=head1 SEE ALSO

L<XML::Pastor::Builtin::Union>, L<XML::Pastor>, L<XML::Pastor::Type>, L<XML::Pastor::ComplexType>, L<XML::Pastor::SimpleType>


=cut

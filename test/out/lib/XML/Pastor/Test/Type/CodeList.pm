
#PASTOR: Code generated by XML::Pastor/1.0.4 at 'Sat Dec  1 23:13:04 2012'

use utf8;
use strict;
use warnings;
no warnings qw(uninitialized);

use XML::Pastor;



#================================================================

package XML::Pastor::Test::Type::CodeList;

use XML::Pastor::Test::Type::Code;

our @ISA=qw(XML::Pastor::Builtin::List);

XML::Pastor::Test::Type::CodeList->XmlSchemaType( bless( {
         'base' => 'List|http://www.w3.org/2001/XMLSchema',
         'baseClasses' => [
                            'XML::Pastor::Builtin::List'
                          ],
         'class' => 'XML::Pastor::Test::Type::CodeList',
         'contentType' => 'simple',
         'derivedBy' => 'list',
         'isRedefinable' => 1,
         'itemClass' => 'XML::Pastor::Test::Type::Code',
         'itemType' => 'Code',
         'metaClass' => 'XML::Pastor::Test::Pastor::Meta',
         'name' => 'CodeList',
         'scope' => 'global',
         'targetNamespace' => 'http://www.example.com/country'
       }, 'XML::Pastor::Schema::SimpleType' ) );

1;


__END__



=head1 NAME

B<XML::Pastor::Test::Type::CodeList>  -  A class generated by L<XML::Pastor> . 


=head1 ISA

This class descends from L<XML::Pastor::Builtin::List>.


=head1 CODE GENERATION

This module was automatically generated by L<XML::Pastor> version 1.0.4 at 'Sat Dec  1 23:13:04 2012'


=head1 SEE ALSO

L<XML::Pastor::Builtin::List>, L<XML::Pastor>, L<XML::Pastor::Type>, L<XML::Pastor::ComplexType>, L<XML::Pastor::SimpleType>


=cut

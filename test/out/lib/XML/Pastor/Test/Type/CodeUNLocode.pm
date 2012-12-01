
#PASTOR: Code generated by XML::Pastor/1.0.4 at 'Sat Dec  1 23:13:04 2012'

use utf8;
use strict;
use warnings;
no warnings qw(uninitialized);

use XML::Pastor;



#================================================================

package XML::Pastor::Test::Type::CodeUNLocode;


our @ISA=qw(XML::Pastor::Builtin::string);

XML::Pastor::Test::Type::CodeUNLocode->XmlSchemaType( bless( {
         'base' => 'string|http://www.w3.org/2001/XMLSchema',
         'baseClasses' => [
                            'XML::Pastor::Builtin::string'
                          ],
         'class' => 'XML::Pastor::Test::Type::CodeUNLocode',
         'contentType' => 'simple',
         'derivedBy' => 'restriction',
         'isRedefinable' => 1,
         'maxLength' => '6',
         'metaClass' => 'XML::Pastor::Test::Pastor::Meta',
         'minLength' => '2',
         'name' => 'CodeUNLocode',
         'pattern' => [
                      'qsd',
                      'hello'
                    ],
         'scope' => 'global',
         'targetNamespace' => 'http://www.example.com/country'
       }, 'XML::Pastor::Schema::SimpleType' ) );

1;


__END__



=head1 NAME

B<XML::Pastor::Test::Type::CodeUNLocode>  -  A class generated by L<XML::Pastor> . 


=head1 ISA

This class descends from L<XML::Pastor::Builtin::string>.


=head1 CODE GENERATION

This module was automatically generated by L<XML::Pastor> version 1.0.4 at 'Sat Dec  1 23:13:04 2012'


=head1 SEE ALSO

L<XML::Pastor::Builtin::string>, L<XML::Pastor>, L<XML::Pastor::Type>, L<XML::Pastor::ComplexType>, L<XML::Pastor::SimpleType>


=cut
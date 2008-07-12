
#PASTOR: Code generated by XML::Pastor/0.54 at 'Sat Jul 12 15:24:21 2008'

use utf8;
use strict;

use XML::Pastor;



#================================================================

package MathWorks::Type::productDepList;

use MathWorks::Type::productDepItem;

our @ISA=qw(XML::Pastor::ComplexType);

MathWorks::Type::productDepList->mk_accessors( qw(productDep));

MathWorks::Type::productDepList->XmlSchemaType( bless( {
                 'attributeInfo' => {},
                 'attributePrefix' => '_',
                 'attributes' => [],
                 'baseClasses' => [
                                    'XML::Pastor::ComplexType'
                                  ],
                 'class' => 'MathWorks::Type::productDepList',
                 'contentType' => 'complex',
                 'elementInfo' => {
                                  'productDep' => bless( {
                                                         'class' => 'MathWorks::Type::productDepItem',
                                                         'maxOccurs' => 'unbounded',
                                                         'name' => 'productDep',
                                                         'scope' => 'local',
                                                         'type' => 'productDepItem'
                                                       }, 'XML::Pastor::Schema::Element' )
                                },
                 'elements' => [
                                 'productDep'
                               ],
                 'isRedefinable' => 1,
                 'name' => 'productDepList',
                 'scope' => 'global'
               }, 'XML::Pastor::Schema::ComplexType' ) );

1;

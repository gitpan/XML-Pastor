
#PASTOR: Code generated by XML::Pastor/0.54 at 'Sat Jul 12 15:24:21 2008'

use utf8;
use strict;

use XML::Pastor;



#================================================================

package MathWorks::ownerInfo;

use MathWorks::Type::ownerInfo;

our @ISA=qw(MathWorks::Type::ownerInfo XML::Pastor::Element);

MathWorks::ownerInfo->XmlSchemaElement( bless( {
                 'baseClasses' => [
                                    'MathWorks::Type::ownerInfo',
                                    'XML::Pastor::Element'
                                  ],
                 'class' => 'MathWorks::ownerInfo',
                 'isRedefinable' => 1,
                 'name' => 'ownerInfo',
                 'scope' => 'global',
                 'type' => 'ownerInfo'
               }, 'XML::Pastor::Schema::Element' ) );

1;

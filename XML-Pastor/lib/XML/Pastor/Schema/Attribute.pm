use utf8;
use strict;

use XML::Pastor::Schema::Object;

package XML::Pastor::Schema::Attribute;
our @ISA = qw(XML::Pastor::Schema::Object);

XML::Pastor::Schema::Attribute->mk_accessors(qw(use));

1;


__END__

=head1 NAME

B<XML::Pastor::Schema::Attribute> - Class that represents the META information about a W3C schema B<attribute>.

=head1 WARNING

This module is used internally by L<XML::Pastor>. You do not normally know much about this module to actually use L<XML::Pastor>.  It is 
documented here for completeness and for L<XML::Pastor> developers. Do not count on the interface of this module. It may change in 
any of the subsequent releases. You have been warned. 

=head1 ISA

This class descends from L<XML::Pastor::Schema::Object>.


=head1 SYNOPSIS
  
  my $attrib = XML::Pastor::Schema::Attribute->new();
  
  $attrib->setFields(name => 'code', scope=> 'local', nameIsAutoGenerated=>0);
  
  print $attrib->name();	# prints 'code'.
  print $attrib->scope();	# prints 'local'.
  

=head1 DESCRIPTION

B<XML::Pastor::Schema::Attribute> is a data-oriented object class that reprsents a W3C schema B<attribute>. It is
parsed from the W3C schema and is used a building block for the produced B<schema model>. Objects of this 
class contain META information about the W3C schema B<attribute> that they represent. 

Like other schema object classes, this is a data-oriented object class, meaning it doesn't have many methods other 
than a constructor and various accessors. 

=head1 METHODS

=head2 CONSTRUCTORS
 
=head4 new() 

  $class->new(%fields)

B<CONSTRUCTOR>, inherited. 

The new() constructor method instantiates a new object. It is inheritable, and indeed inherited,
by the decsendant classes. 
  
Any -named- fields that are passed as parameters are initialized to those values within
the newly created object. 

.

=head2 ACCESSORS

=head3 Inherited accessors

Several accessors are inherited by this class from its ancestor L<XML::Pastor::Schema::Object>. 
Please see L<XML::Pastor::Schema::Object> for a documentation of those.

=head3 Accessors defined here

=head4 use()

  my $u = $object->use();  # GET
  $object->use($u);        # SET

This is W3C property.

Indicates if the B<use> of an attribute is either 'I<optional>', 'I<required>', or 'I<prohibited>'.
This is filled in by the schema parser and is used at validation time.

.

=head1 BUGS & CAVEATS

There no known bugs at this time, but this doesn't mean there are aren't any. 
Note that, although some testing was done prior to releasing the module, this should still be considered alpha code. 
So use it at your own risk.

Note that there may be other bugs or limitations that the author is not aware of.

=head1 AUTHOR

Ayhan Ulusoy <dev@ulusoy.name>


=head1 COPYRIGHT

  Copyright (C) 2006-2007 Ayhan Ulusoy. All Rights Reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.


=head1 SEE ALSO

See also L<XML::Pastor>, L<XML::Pastor::ComplexType>, L<XML::Pastor::SimpleType>

If you are curious about the implementation, see L<XML::Pastor::Schema::Parser>,
L<XML::Pastor::Schema::Model>, L<XML::Pastor::Generator>.

If you really want to dig in, see L<XML::Pastor::Schema::Attribute>, L<XML::Pastor::Schema::AttributeGroup>,
L<XML::Pastor::Schema::ComplexType>, L<XML::Pastor::Schema::Element>, L<XML::Pastor::Schema::Group>,
L<XML::Pastor::Schema::List>, L<XML::Pastor::Schema::SimpleType>, L<XML::Pastor::Schema::Type>, 
L<XML::Pastor::Schema::Object>

=cut


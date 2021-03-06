use utf8;
use strict;
use warnings;
no warnings qw(uninitialized);

#================================================================
package XML::Pastor::Schema::Type;
use XML::Pastor::Schema::Object;

our @ISA = qw(XML::Pastor::Schema::Object);

XML::Pastor::Schema::Type->mk_accessors(qw(base baseClasses contentType derivedBy final id));


1;

__END__

=head1 NAME

B<XML::Pastor::Schema::Type> - Ancestor of L<XML::Pastor::Schema::SimpleType> and L<XML::Pastor::Schema::ComplexType>.

=head1 WARNING

This module is used internally by L<XML::Pastor>. You do not normally know much about this module to actually use L<XML::Pastor>.  It is 
documented here for completeness and for L<XML::Pastor> developers. Do not count on the interface of this module. It may change in 
any of the subsequent releases. You have been warned. 

=head1 ISA

This class descends from L<XML::Pastor::Schema::Object>.

=head1 SYNOPSIS
  
  my $type = XML::Pastor::Schema::Type->new();
  
  $type->setFields(name => 'Country', scope=> 'global', nameIsAutoGenerated=>0);
  $type->base('Location');
  $type->derivedBy('extension');
  
  print $type->name();	# prints 'Country'.
  print $type->scope();	# prints 'global'.
  print $type->base();	# prints 'Location'.
  print $type->derivedBy();	# prints 'extension'.
  

=head1 DESCRIPTION

B<XML::Pastor::Schema::Type> is an B<abstract> ancestor of L<XML::Pastor> schema type classes.
That is, it is the ancestor of L<XML::Pastor::Schema::SimpleType> and L<XML::Pastor::Schema::ComplexType>.

It descends from L<XML::Pastor::Schema::Object>. It adds a few more accessors to those that are already
defined in this ancestor. 

=head1 METHODS

=head2 CONSTRUCTORS
 
=head4 new() 

  $class->new(%fields)

B<CONSTRUCTOR>, inherited from L<XML::Pastor::Schema::Object>. 

The new() constructor method instantiates a new object. It is inheritable. 
Normally, one does not call the B<new> method on B<XML::Pastor::Schema::Object>. One rather
calls it on the descendant subclasses.
  
Any -named- fields that are passed as parameters are initialized to those values within
the newly created object. 

See L<XML::Pastor::Schema::Object/new()>.

.

=head2 ACCESSORS

=head3 Inherited accessors

Several accessors are inherited by this class from its ancestor L<XML::Pastor::Schema::Object>.
Please see L<XML::Pastor::Schema::Object> for a documentation of those.


=head3 Accessors defined here

=head4 base()

  my $base = $object->base();	# GET
  $object->base($base);  	    # SET

This is a W3C property. 

The I<base> of the type, that is, its ancestor within the W3C schema.
This value comes directly from the W3C schema and written by the schema parser. 

=head4 baseClasses()

  my $bases = $object->baseClasses();	# GET
  $object->baseClasses($bases);  	    # SET

The base classes of this type, when it is generated by L<XML::Pastor>. This value is
computed at schema model I<resolution> time by L<XML::Pastor::Schema::Model/resolve()>.

=head4 contentType()

  my $ct = $object->contentType();	# GET
  $object->contentType($ct);  	    # SET

The B<contentType> of a I<type> is either 'B<simple>' or 'B<complex>'. This is filled in by the
B<new()> methods of the descendant classes. 

=head4 derivedBy()

  my $derivedBy = $object->derivedBy();	# GET
  $object->derivedBy($derivedBy);  	    # SET

A type is derived either by 'B<restriction>' or 'B<extension>'. This value is deduced at parse
time by the schema parser. 

=head4 final()

  my $final = $object->final();	# GET
  $object->final($final);  	    # SET

This is a W3C property. 

A type can be final for 'restriction' or 'extension'. This field specifies that. Currently, 
L<XML::Pastor> does NOT use the value of this field.


=head1 BUGS & CAVEATS

There no known bugs at this time, but this doesn't mean there are aren't any. 
Note that, although some testing was done prior to releasing the module, this should still be considered alpha code. 
So use it at your own risk.

Note that there may be other bugs or limitations that the author is not aware of.

=head1 AUTHOR

Ayhan Ulusoy <dev(at)ulusoy(dot)name>


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



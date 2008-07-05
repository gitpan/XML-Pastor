use utf8;
use strict;

use XML::Pastor::Schema::Type;

package XML::Pastor::Schema::ComplexType;
our @ISA = qw(XML::Pastor::Schema::Type);

XML::Pastor::Schema::ComplexType->mk_accessors(qw(attributes attributeInfo attributePrefix elements elementInfo xAttributes xAttributeInfo xElements xElementInfo targetNamespace));

sub new {
	my $proto 	= shift;
	my $class	= ref($proto) || $proto;
	my $self = {@_};
	
	unless ($self->{attributes}) {
		$self->{attributes} = [];
	}
	unless ($self->{attributeInfo}) {
		$self->{attributeInfo} = {};
	}

	unless ($self->{elements}) {
		$self->{elements} = [];
	}
	unless ($self->{elementInfo}) {
		$self->{elementInfo} = {};
	}
	unless ($self->{contentType}) {
		$self->{contentType} = "complex";
	}
	
	unless (defined($self->{attributePrefix})) {
		$self->{attributePrefix} = "_";	# Default value. No need to change this for now.
	}
	
	return bless $self, $class;
}

#-----------------------------------------------------------------
# Return effective attributes, including those that may come from base classes. 
#-----------------------------------------------------------------
sub effectiveAttributes {
	my $self	= shift;
	return ($self->xAttributes() || $self->attributes());
}

#-----------------------------------------------------------------
# Return effective attributeInfo, including those that may come from base classes. 
#-----------------------------------------------------------------
sub effectiveAttributeInfo {
	my $self	= shift;
	return ($self->xAttributeInfo() || $self->attributeInfo());
}

#-----------------------------------------------------------------
# Return effective elements, including those that may come from base classes. 
#-----------------------------------------------------------------
sub effectiveElements {
	my $self	= shift;
	return ($self->xElements() || $self->elements());
}

#-----------------------------------------------------------------
# Return effective elementInfo, including those that may come from base classes. 
#-----------------------------------------------------------------
sub effectiveElementInfo {
	my $self	= shift;
	return ($self->xElementInfo() || $self->elementInfo());
}

1;

__END__

=head1 NAME

B<XML::Pastor::Schema::ComplexType> - Class that represents the META information about a W3C schema complex type.

=head1 WARNING

This module is used internally by L<XML::Pastor>. You do not normally know much about this module to actually use L<XML::Pastor>.  It is 
documented here for completeness and for L<XML::Pastor> developers. Do not count on the interface of this module. It may change in 
any of the subsequent releases. You have been warned. 

=head1 ISA

This class descends from L<XML::Pastor::Schema::Type> and hence from <XML::Pastor::Schema::Object>.


=head1 SYNOPSIS
  
  my $type = XML::Pastor::Schema::ComplexType->new();
  
  $type->setFields(name => 'Country', scope=> 'global', nameIsAutoGenerated=>0);
  $type->base('Location');
  $type->derivedBy('extension');
  
  print $type->name();	# prints 'Country'.
  print $type->scope();	# prints 'global'.
  print $type->base();	# prints 'Location'.
  print $type->derivedBy();	# prints 'extension'.
  

=head1 DESCRIPTION

B<XML::Pastor::Schema::ComplexType> is a data-oriented object class that reprsents a W3C Complex Type. It is
parsed from the W3C schema and is used a building block for the produced B<schema model>. It is also used 
embedded as class data within the complex classes generated by L<XML::Pastor>. This way, objects of this 
class contain META information about the W3C schema simple type that they represent. 

Like other schema object classes, this is a data-oriented object class, meaning it doesn't have many methods other 
than a constructor and various accessors. 

=head1 METHODS

=head2 CONSTRUCTORS
 
=head4 new() 

  $class->new(%fields)

B<CONSTRUCTOR>, overridden. 

The new() constructor method instantiates a new object. It is inheritable. 
  
Any -named- fields that are passed as parameters are initialized to those values within
the newly created object. 

In its overriden form, what this method does is as follows:

=over

=item * sets the I<contentType> field to 'I<complex>';

=item * creates the B<attributes> and B<elements> array-ref fields if not passed already as parameters;

=item * creates the B<attributeInfo> and B<elementInfo> hash-ref fields if not passed already as parameters;

=back

.

=head2 ACCESSORS

=head3 Inherited accessors

Several accessors are inherited by this class from its ancestors L<XML::Pastor::Schema::Type> and L<XML::Pastor::Schema::Object>. 
Please see L<XML::Pastor::Schema::Type> and L<XML::Pastor::Schema::Object> for a documentation of those.

=head3 Accessors defined here

=head4 attributes()

  my $attribs = $object->attributes();  # GET
  $object->attributes($attribs);        # SET

A reference to an array containing the names of the attributes that this complex type has.

Notice that this field refers to only attributes that are declared at this level. Any attributes 
that are inherited via derivation by extension are not considered here.

=head4 attributeInfo()

  my $ai = $object->attributeInfo();  # GET
  $object->attributeInfo($ai);        # SET

A reference to a hash whose keys are the names of the attributes, and whose values are
objects of type L<XML::Pastor::Schema::Attribute>, that give meta information about those attributes.

Notice that this field refers to only attributes that are declared at this level. Any attributes 
that are inherited via derivation by extension are not considered here.

=head4 elements()

  my $elems = $object->elements();  # GET
  $object->elements($elems);        # SET

A reference to an array containing the names of the child elements that this complex type has.
The array does not take into consideration any differnce between I<sequence>, I<choice>, or I<all> groupings.

Notice that this field refers to only child elements that are declared at this level. Any child elements 
that are inherited via derivation by extension are not considered here.

=head4 elementInfo()

  my $ei = $object->elementInfo();  # GET
  $object->elementInfo($ei);        # SET

A reference to a hash whose keys are the names of the child elements, and whose values are
objects of type L<XML::Pastor::Schema::Element>, that give meta information about those child elements.

Notice that this field refers to only child elements that are declared at this level. Any child elements 
that are inherited via derivation by extension are not considered here.

=head4 targetNamespace()

  my $tns = $object->targetNamespace();  # GET
  $object->targetNamespace($tns);        # SET

The target name space of the complex type (typically a URI).

=head4 xAttributes()

  my $attribs = $object->xAttributes();  # GET
  $object->xAttributes($attribs);        # SET

A reference to an array containing the names of the attributes that this complex type has.

The value of this field is undefined when this complex type is not derived from any other.
When defined, this includes all the attributes including even those inherited via derivation by extension.

=head4 xAttributeInfo()

  my $ai = $object->xAttributeInfo();  # GET
  $object->xAttributeInfo($ai);        # SET

A reference to a hash whose keys are the names of the attributes, and whose values are
objects of type L<XML::Pastor::Schema::Attribute>, that give meta information about those attributes.

The value of this field is undefined when this complex type is not derived from any other.
When defined, this includes all the attributes including even those inherited via derivation by extension.

=head4 xElements()

  my $elems = $object->xElements();  # GET
  $object->xElements($elems);        # SET

A reference to an array containing the names of the child elements that this complex type has.
The array does not take into consideration any differnce between I<sequence>, I<choice>, or I<all> groupings.

The value of this field is undefined when this complex type is not derived from any other.
When defined, this includes all the child elements including even those inherited via derivation by extension.

=head4 xElementInfo()

  my $ei = $object->xElementInfo();  # GET
  $object->xElementInfo($ei);        # SET

A reference to a hash whose keys are the names of the child elements, and whose values are
objects of type L<XML::Pastor::Schema::Element>, that give meta information about those attributes.

The value of this field is undefined when this complex type is not derived from any other.
When defined, this includes all the child elements including even those inherited via derivation by extension.

=head2 OTHER METHODS

=head4 effectiveAttributes()

When this complex type has been derived from another, L</xAttributes()> will be defined. In this case
this method returns the same as L</xAttributes()>. Otherwise, it returns the same as L</attributes()>.

=head4 effectiveAttributeInfo()

When this complex type has been derived from another, L</xAttributeInfo()> will be defined. In this case
this method returns the same as L</xAttributeInfo()>. Otherwise, it returns the same as L</attributeInfo()>.

=head4 effectiveElements()

When this complex type has been derived from another, L</xElements()> will be defined. In this case
this method returns the same as L</xElements()>. Otherwise, it returns the same as L</elements()>.

=head4 effectiveElementInfo()

When this complex type has been derived from another, L</xElementInfo()> will be defined. In this case
this method returns the same as L</xElementInfo()>. Otherwise, it returns the same as L</elementInfo()>.

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


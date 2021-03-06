module PolyamorousHelper
  def new_join_association(reflection, children, klass)
    Polyamorous::JoinAssociation.new reflection, children, klass
  end

  def new_join_dependency(klass, associations = {})
    Polyamorous::JoinDependency.new klass, klass.arel_table, associations, Polyamorous::InnerJoin
  end

  def new_join(name, type = Polyamorous::InnerJoin, klass = nil)
    Polyamorous::Join.new name, type, klass
  end
end

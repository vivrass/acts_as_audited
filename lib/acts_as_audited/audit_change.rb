class AuditChange < ActiveRecord::Base
  belongs_to :audit

  protected
  def convert_to_column_type(value)
    return value unless self.audit && self.audit.auditable_type
    klass = self.audit.auditable_type.constantize
    column = klass.columns_hash[attribute_name.to_s] 
    if column
      column.type_cast(value)
    else
      value
    end
  end
end

class UpdateAuditChange < AuditChange
  def to_value
    [convert_to_column_type(old_value), convert_to_column_type(new_value)]
  end
end

class CreateAuditChange < AuditChange
  def to_value
    convert_to_column_type new_value 
  end
end

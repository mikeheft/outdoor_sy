# typed: strict

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ActiveStorage::TransformJob`.
# Please instead update this file by running `bin/tapioca dsl ActiveStorage::TransformJob`.


class ActiveStorage::TransformJob
  class << self
    sig do
      params(
        blob: T.untyped,
        transformations: T.untyped,
        block: T.nilable(T.proc.params(job: ActiveStorage::TransformJob).void)
      ).returns(T.any(ActiveStorage::TransformJob, FalseClass))
    end
    def perform_later(blob, transformations, &block); end

    sig { params(blob: T.untyped, transformations: T.untyped).returns(T.untyped) }
    def perform_now(blob, transformations); end
  end
end

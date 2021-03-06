# Inline Configuration

You can also enhance the cloner configuration inline (i.e., add declarations dynamically):

```ruby
operation = UserCloner.call(User.last) do
  exclude_association :profile

  finalize do |source, record|
    record.email = "clone_of_#{source.email}"
  end
end

cloned = operation.to_record

cloned.email
# => "clone_of_john@example.com"

# associations:
cloned.posts.size == User.last.posts.size
# => true
cloned.profile
# => nil
```

Inline enhancement doesn't affect the _global_ configuration so that you can use it without any fear.

Thus it's also possible to clone objects without any cloner classes at all by using `Clowne::Cloner`:

```ruby
cloned = Clowne::Cloner.call(user) do
  # anything you want!
end.to_record

cloned
# => <#User..
```

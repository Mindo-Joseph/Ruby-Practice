languages = {
    :de => 'German',
    :en => 'English',
    :es => 'Spanish',
  }
  dictionary = {
    :de => { :one => 'eins', :two => 'zwei', :three => 'drei' },
    :en => { :one => 'one', :two => 'two', :three => 'three' },
    :es => { :one => 'uno', :two => 'dos', :three => 'tres' }
  }
=begin
    The output should look something like this
In German, one means eins, two means zwei, three means drei.
In Spanish, one means uno, two means dos, three means tres.
    
=end

def playing_with_languages(languages,dictionary)
    selected = languages.select { |key, words| key == :de or key == :es}

    lines = selected.map {|key,name| words=dictionary[key]}

end
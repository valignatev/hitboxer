/*
This is a macro to generate a contiguous string from multiple strings at compile time,
so you kinda have multiline string without using "#string",
which can sometimrs be inconvenient when using inside of functions because it preserves
the leading whitespaces, so you have to format it in a funky way.
*/
S :: ($strings: ..string) -> string #expand {
  return #run -> string {
    builder: String_Builder;
    for str : strings {
      append(*builder, str);
    }
    return builder_to_string(*builder);
  };  
}

#scope_file

#import "Basic";
#import "String";

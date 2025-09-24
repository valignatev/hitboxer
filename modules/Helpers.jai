/*
This is a macro to generate a contiguous string from multiple strings at compile time,
so you kinda have multiline string without using "#string",
which can sometimrs be inconvenient when using inside of functions because it preserves
the leading whitespaces, so you have to format it in a funky way.
*/
S :: ($strings: ..string) -> string #expand {
    #insert -> string {
        builder: String_Builder;
        {
            print_to_builder(*builder, "return \"");
            defer print_to_builder(*builder, "\";");
            for strings {
                replaced := replace(it, "\"", "\\\"");
                replaced = replace(replaced, "\n", "\\n");
                replaced = replace(replaced, "\t", "\\t");
                replaced = replace(replaced, "%", "%%");
                print_to_builder(*builder, replaced);
            }
        }
        result := builder_to_string(*builder);
        return result;
    }
}

#scope_file

#import "Basic";
#import "String";

decl_error_msg :: #string ERR
Only declarations with procedure call on the right side are supported,
but right side of provided declaration is %
ERR

with_error :: (code: Code, on_error: Code = #code {}) #expand {
    #insert,scope(code) -> Code {
        root := compiler_get_nodes(code);

        if root.kind == {
            case .COMPOUND_DECLARATION; {
                decl := root.(*Code_Compound_Declaration);

                ass := decl.comma_separated_assignment;
                props := decl.declaration_properties;
                expr := props.expression;
                if expr.kind != .PROCEDURE_CALL {
                    compiler_report(sprint(decl_error_msg, expr.kind));
                }

                for * ass.arguments {
                    assert(it.node.kind == .IDENT);

                    ident := it.node.(*Code_Ident);

                    // Backtick the identifier
                    ident.flags |= .HAS_SCOPE_MODIFIER;

                    it.node = ident;
                }

                return compiler_get_code(root);

            }
            case .DECLARATION; {
                decl := root.(*Code_Declaration);
                expr := decl.expression;

                if expr.kind != .PROCEDURE_CALL {
                    compiler_report(sprint(decl_error_msg, expr.kind));
                }
                // Again, backtick identifier that's bound to the declaration
                // to export it into the caller scope
                decl.flags |= .HAS_SCOPE_MODIFIER;

                return compiler_get_code(decl);
            }
            case .PROCEDURE_CALL; {
                return code;
            }
            // TODO: implement for binary operator which is assignment!
            // Example:
            // with_error(#code result = ioctl(fd, UI_DEV_CREATE), #code {
            //     log_error("Couldn't create a virtual device %: %, %\n", name, error_value, error_code);
            //     return false, -1;
            // });
        }

        compiler_report(sprint("with_error does not support this code kind: %\n", root.kind));
        return #code dummy;
    };

    // Check whether error_value is already declared in the caller scope
    // so that we don't redeclare it and cause Redeclaration error.
    // This check happens at compile time.
    #if #exists(`error_value) {
        `error_value = System.get_error_value();
    } else {
        `error_value := System.get_error_value();
    }

    if `error_value {

        // Same with error_string
        #if #exists(`error_string) {
            `error_string = System.get_error_string(`error_value);
        } else {
            `error_string := System.get_error_string(`error_value);
        }
        #insert on_error;
    }
}

#scope_file 

#import "Basic";
#import "Compiler";
#import "File";
System :: #import "System";


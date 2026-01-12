from . import PROGRAM_VERSION, parse_program, ParserError, ARGS
import argparse
import sys

def main():
    parser = argparse.ArgumentParser(
        description="Paramath Compiler",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
examples:
  paramath testfile.pm
  paramath testfile.pm -D -V
  paramath testfile.pm -L output.log
  paramath testfile.pm -DVL debug.log
        """,
    )

    parser.add_argument(
        "filepath",
        nargs="?",
        help="Input paramath file",
    )
    parser.add_argument(
        "-v",
        "--version",
        action="version",
        version=f"Paramath {PROGRAM_VERSION}",
        help="prints the Paramath version number and exits",
    )
    parser.add_argument(
        "-o",
        "--output",
        default="math.txt",
        metavar="FILE",
        help="output file (default: math.txt)",
    )
    parser.add_argument(
        "-D", "--debug", action="store_true", help="enable debug output"
    )
    parser.add_argument(
        "-V", "--verbose", action="store_true", help="enable verbose output"
    )
    parser.add_argument(
        "-O",
        "--print-output",
        action="store_true",
        help="print out the compiled output",
    )
    parser.add_argument(
        "-S",
        "--safe-eval",
        action="store_true",
        help="prints and blocks python code from evaluating and exits, used for safely running unknown scripts",
    )
    parser.add_argument(
        "-L", "--logfile", required=False, metavar="FILE", help="write logs to FILE"
    )
    args = parser.parse_args()
    for name, a in args.__dict__.items():
        if name in ARGS:
            ARGS[name] = a

    if ARGS["logfile"]:
        with open(ARGS["logfile"], "w") as f:
            f.write(f"Paramath Compiler {PROGRAM_VERSION}\n")

    try:
        if args.filepath is None:
            raise ParserError("No path to file provided, quitting")
        print(f"reading {args.filepath}")
        if ARGS["safe_eval"]:
            print("[safe evaluation enabled]")
        if ARGS["debug"]:
            print("[debug mode enabled]")
        if ARGS["verbose"]:
            print("[verbose mode enabled]")
        if ARGS["logfile"]:
            print(f"[logging to: {ARGS['logfile']}]")
        if ARGS["print_output"]:
            print()

        with open(args.filepath) as f:
            code = f.read().strip().replace(";", "\n").split("\n")

        results = parse_program(code, ARGS["safe_eval"])

        with open(args.output, "w") as f:
            for result, output in results:
                result = (
                    result.replace("**", "^").replace("*", "").replace("ans", "ANS")
                )
                if ARGS["print_output"]:
                    print(f"to {output}:")
                    print(result)
                f.write(f"to {output}:\n{result}\n")

        if ARGS["print_output"]:
            print("")
        print("=== compilation successful! ===")
        print(f"generated {len(results)} expressions")
        print(f"written to: {args.output}")

    except FileNotFoundError:
        print(f"error: file '{args.filepath}' not found")
        sys.exit(1)
    except ParserError as e:
        print(f"parser error: {e}")
        sys.exit(1)
    except Exception as e:
        print(f"unexpected error: {e}")
        import traceback

        traceback.print_exc()
        sys.exit(1)

if __name__ == "__main__":
    main()

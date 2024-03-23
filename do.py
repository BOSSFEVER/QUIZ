import os
import sys

WRONG_DIR_ERROR = "Please execute this script from the root project directory"
NO_ARGV_ERROR = """Please provide at least one argument for what to do. Currently supported arguments are:
dependency -> Creates the dependency graph located in doc/dependency/graph.svg
"""
WRONG_ARGV_ERROR = "No functionality for the provided argument does exist. Use 'python do.py help' for a list of working arguments"


def usecase_dependency() -> None:
    os.system("lakos -m /lib -i /examples | dot -Tsvg -o doc/dependency/graph.svg")


def is_correct_dir() -> bool:
    return os.path.exists("lib") and os.path.exists("do.py") and os.path.exists("pubspec.yaml")


def main():
    if not is_correct_dir():  # check for correct path
        print(WRONG_DIR_ERROR)
        exit(2)

    args = sys.argv[1:]

    if len(args) == 0 or args[0] == "help":  # check for argv
        print(NO_ARGV_ERROR)
        exit(1)

    if args[0] in ["dep", "dependency"]:
        usecase_dependency()
    else:
        print(WRONG_ARGV_ERROR)


if __name__ == "__main__":
    main()

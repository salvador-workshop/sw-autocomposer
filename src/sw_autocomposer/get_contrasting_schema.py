import argparse
import os

root_dir = os.path.join(os.path.dirname(__file__), "..", "..")
output_dir = os.path.join(root_dir, "output")

script_desc = "..."


def get_contrasting_schema():

    parser = argparse.ArgumentParser(description=script_desc)
    args = parser.parse_args()

    print("\n----------------------------------------------------------------\n")

    print(f"> Get Contrasting Schema")
    print(f">")
    print(f"> Test content")

    print("\n----------------------------------------------------------------\n")


if __name__ == "__get_contrasting_schema__":
    get_contrasting_schema()

import argparse, os, random, json

from .utils import get_cfg_data

cfg_data = get_cfg_data()
script_desc = "..."


def get_contrasting_schema():

    parser = argparse.ArgumentParser(description=script_desc)
    args = parser.parse_args()

    galant_schemata_filepath = cfg_data["galant_schemata_filepath"]

    with open(galant_schemata_filepath) as f:
        schemata_data = json.load(f)

    random_contrasting_schema = random.choice(schemata_data["contrastingSchemata"])

    print("\n----------------------------------------------------------------\n")

    print(f"> Get Contrasting Schema")
    print(f">")
    print(f"> {random_contrasting_schema}")

    print("\n----------------------------------------------------------------\n")


if __name__ == "__get_contrasting_schema__":
    get_contrasting_schema()

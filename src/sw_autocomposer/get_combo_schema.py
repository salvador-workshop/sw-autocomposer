import argparse, os, random, json

from .utils import get_cfg_data

cfg_data = get_cfg_data()
script_desc = "..."


def get_combo_schema():

    parser = argparse.ArgumentParser(description=script_desc)
    args = parser.parse_args()

    galant_schemata_filepath = cfg_data["galant_schemata_filepath"]

    with open(galant_schemata_filepath) as f:
        schemata_data = json.load(f)

    random_opening_schema = random.choice(schemata_data["openingSchemata"])
    random_continuing_schema = random.choice(schemata_data["continuingSchemata"])
    random_contrasting_schema = random.choice(schemata_data["contrastingSchemata"])

    print("\n----------------------------------------------------------------\n")

    print(f"Get Combo Schema\n")
    print(f"Opening: {random_opening_schema["name"]}")
    print(f"Continuing: {random_continuing_schema["name"]}")
    print(f"Contrasting: {random_contrasting_schema["name"]}")

    print("\n----------------------------------------------------------------\n")


if __name__ == "__get_combo_schema__":
    get_combo_schema()

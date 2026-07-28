import argparse, os, random, json

from .utils import get_cfg_data

cfg_data = get_cfg_data()
script_desc = "..."


def get_combo_schema():

    parser = argparse.ArgumentParser(description=script_desc)
    args = parser.parse_args()

    schemata_data_filepath = os.path.join(cfg_data["data_dir"], "galant_schemata.json")

    with open(schemata_data_filepath) as f:
        schemata_data = json.load(f)

    random_opening_schema = random.choice(schemata_data["openingSchemata"])
    random_continuing_schema = random.choice(schemata_data["continuingSchemata"])

    print("\n----------------------------------------------------------------\n")

    print(f"> Get Combo Schema")
    print(f">")
    print(f"> {random_opening_schema} | {random_continuing_schema}")

    print("\n----------------------------------------------------------------\n")


if __name__ == "__get_combo_schema__":
    get_combo_schema()

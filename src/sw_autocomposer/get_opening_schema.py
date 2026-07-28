import argparse, os, random, json

from .utils import get_cfg_data

cfg_data = get_cfg_data()
script_desc = "..."


def get_opening_schema():

    parser = argparse.ArgumentParser(description=script_desc)
    args = parser.parse_args()

    schemata_data_filepath = os.path.join(cfg_data["data_dir"], "galant_schemata.json")

    with open(schemata_data_filepath) as f:
        schemata_data = json.load(f)

    random_opening_schema = random.choice(schemata_data["openingSchemata"])

    print("\n----------------------------------------------------------------\n")

    print(f"> Get Opening Schema")
    print(f">")
    print(f"> {random_opening_schema}")

    print("\n----------------------------------------------------------------\n")


if __name__ == "__get_opening_schema__":
    get_opening_schema()

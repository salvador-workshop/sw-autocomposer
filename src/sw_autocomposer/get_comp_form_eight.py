import argparse, os, random, json

from .utils import get_cfg_data

cfg_data = get_cfg_data()
script_desc = "..."


def get_comp_form_eight():

    parser = argparse.ArgumentParser(description=script_desc)
    args = parser.parse_args()

    schemata_data_filepath = os.path.join(cfg_data["data_dir"], cfg_data["comp_form_filename"])
    
    with open(schemata_data_filepath) as f:
        comp_form_data = json.load(f)

    random_composition_form = random.choice(comp_form_data["eightBarForms"])

    print("\n----------------------------------------------------------------\n")

    print(f"> Get Eight-bar Composition Form")
    print(f">")
    print(f"> {random_composition_form}")

    print("\n----------------------------------------------------------------\n")


if __name__ == "__get_comp_form_eight__":
    get_comp_form_eight()

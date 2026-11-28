import argparse, os, random, json

from ..utils import get_cfg_data
from .template_utils import template_strings, transpose_target_list

cfg_data = get_cfg_data()
template_paths = {
    "all_schemata": os.path.join(
        cfg_data["lilypond_templates_dir"], "all-schemata-template.ly"
    ),
    "all_schemata_random": os.path.join(
        cfg_data["lilypond_templates_dir"], "all-schemata-template.ly"
    ),
    "random_schemata": os.path.join(
        cfg_data["lilypond_templates_dir"], "all-schemata-template.ly"
    ),
}


def write_lilypond_internal_file(filename_stub, content):
    full_filename = f"{filename_stub}.internal.ly"
    full_filepath = os.path.join(cfg_data["lilypond_dir"], full_filename)

    with open(full_filepath, "w") as outfile:
        outfile.write(content)

    return 0


def write_all_schemata():
    return 0


def write_all_schemata_random():
    """Writes all schemata to one random key."""
    random_transpose_target = random.choice(transpose_target_list)
    template_target = template_strings["schema_transpose_keys"]
    random_transpose_expr = template_target.replace(
        "c c", f"c {random_transpose_target}"
    )

    with open(template_paths["all_schemata_random"], "r") as template_file:
        template_content = template_file.read()

    converted_content = template_content.replace(template_target, random_transpose_expr)
    write_lilypond_internal_file("all-schemata-random", converted_content)

    return 0


def write_random_schemata():
    return 0

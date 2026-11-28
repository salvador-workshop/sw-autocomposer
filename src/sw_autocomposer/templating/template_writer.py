import argparse, os, random, json

from ..utils import get_cfg_data
from .template_utils import template_paths, template_strings, transpose_target_list

cfg_data = get_cfg_data()


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


def write_random_forms():
    random_time_sig = random.choice(cfg_data["time_signatures"])

    random_eight_bar_form_id = f"{random.choice(cfg_data["forms"]["eight_bar"])}.png"
    random_eight_bar_form = f"../data/img/form/{random_eight_bar_form_id}"

    random_small_form_id = f"{random.choice(cfg_data["forms"]["small"])}.png"
    random_small_form = f"../data/img/form/{random_small_form_id}"

    print(random_time_sig, random_eight_bar_form, random_small_form)

    with open(template_paths["random_forms"], "r") as template_file:
        template_content = template_file.read()

    converted_content = template_content.replace(
        template_strings["form_time_signature"], random_time_sig
    )
    converted_content = converted_content.replace(
        template_strings["form_img_path_eight_bar"], random_eight_bar_form
    )
    converted_content = converted_content.replace(
        template_strings["form_img_path_small"], random_small_form
    )
    write_lilypond_internal_file("random-forms", converted_content)

    return 0


def write_random_schemata():
    return 0

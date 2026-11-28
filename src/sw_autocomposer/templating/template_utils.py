import argparse, os, random, json
from ..utils import get_cfg_data

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
    "random_forms": os.path.join(
        cfg_data["lilypond_templates_dir"], "random-forms.ly"
    ),
}

template_strings = {
    "schema_transpose_keys": "\\transpose c c",
    "schema_id": "SchemaId",
    "schema_id_var": "SchemaIdVar",
    "schema_label": "SchemaLabel",
    "form_time_signature": "FormTimeSignature",
    "form_img_path_eight_bar": "FormImgPathEightBar",
    "form_img_path_small": "FormImgPathSmall",
}

transpose_target_list = [
    "c",
    "g,",
    "d",
    "a,",
    "e",
    "b,",
    "fs",
    "gf",
    "df",
    "af,",
    "ef",
    "bf,",
    "f",
]

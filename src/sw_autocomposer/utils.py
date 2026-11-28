import os, json

file_dir = os.path.dirname(os.path.realpath(__file__))

repo_root_dir = os.path.join(file_dir, "../../")
output_dir = os.path.join(repo_root_dir, "output")
src_dir = os.path.join(repo_root_dir, "src")
package_dir = os.path.join(src_dir, "sw_autocomposer")

data_dir = os.path.join(package_dir, "data")
forms_img_dir = os.path.join(data_dir, "img/form")
lilypond_dir = os.path.join(package_dir, "lilypond")
lilypond_templates_dir = os.path.join(package_dir, "lilypond_templates")
templating_dir = os.path.join(package_dir, "templating")


def get_all_available_schemata(data_filepath):
    opening_schemata_ids = []
    continuing_schemata_ids = []
    contrasting_schemata_ids = []

    with open(data_filepath, "r") as file:
        data_json = json.load(file)

        opening_schemata = data_json["openingSchemata"]
        for schema in opening_schemata:
            opening_schemata_ids.append(schema["id"])

        continuing_schemata = data_json["continuingSchemata"]
        for schema in continuing_schemata:
            continuing_schemata_ids.append(schema["id"])

        contrasting_schemata = data_json["contrastingSchemata"]
        for schema in contrasting_schemata:
            contrasting_schemata_ids.append(schema["id"])

    return {
        "opening": opening_schemata_ids,
        "continuing": continuing_schemata_ids,
        "contrasting": contrasting_schemata_ids,
    }


def get_all_available_forms(data_filepath):
    eight_bar_form_ids = []
    small_form_ids = []
    sixteen_bar_form_ids = []

    with open(data_filepath, "r") as file:
        data_json = json.load(file)

        eight_bar_forms = data_json["eightBarForms"]
        for form in eight_bar_forms:
            eight_bar_form_ids.append(form["id"])

        small_forms = data_json["smallForms"]
        for form in small_forms:
            small_form_ids.append(form["id"])

        sixteen_bar_forms = data_json["sixteenBarForms"]
        for form in sixteen_bar_forms:
            sixteen_bar_form_ids.append(form["id"])

    return {
        "eight_bar": eight_bar_form_ids,
        "small": small_form_ids,
        "sixteen_bar": sixteen_bar_form_ids,
    }


def get_all_available_time_signatures(data_filepath):
    """Gets all available time signatures, including repetitions specified in data file."""

    all_time_sigs = []
    with open(data_filepath, "r") as file:
        data_json = json.load(file)
        time_sigs_with_weights = data_json["timeSignatures"]
        for time_sig, weight_reps in time_sigs_with_weights.items():
            for i in range(weight_reps):
                # print(i)
                all_time_sigs.append(time_sig)
            # print(f"{time_sig}: {weight_reps}")

    return all_time_sigs


def get_cfg_data():
    cfg_data = {
        "repo_root_dir": repo_root_dir,
        "output_dir": output_dir,
        "src_dir": src_dir,
        "package_dir": package_dir,
        "data_dir": data_dir,
        "forms_img_dir": forms_img_dir,
        "lilypond_dir": lilypond_dir,
        "lilypond_templates_dir": lilypond_templates_dir,
        "templating_dir": templating_dir,
        "cfg_filename": "autocomposer.config.json",
        "comp_form_filename": "composition_form.json",
        "galant_schemata_filename": "galant_schemata.json",
    }

    cfg_data["cfg_filepath"] = os.path.join(repo_root_dir, cfg_data["cfg_filename"])
    cfg_data["comp_form_filepath"] = os.path.join(
        cfg_data["data_dir"], cfg_data["comp_form_filename"]
    )
    cfg_data["galant_schemata_filepath"] = os.path.join(
        cfg_data["data_dir"], cfg_data["galant_schemata_filename"]
    )

    with open(f"{cfg_data['cfg_filepath']}", "r") as file:
        cfg_json = json.load(file)
        cfg_data["output_dir_ly"] = os.path.join(
            repo_root_dir, cfg_json["paths"]["outputDirectoryLy"]
        )
        cfg_data["output_dir_pdf"] = os.path.join(
            repo_root_dir, cfg_json["paths"]["outputDirectoryPdf"]
        )

    cfg_data["schemata"] = get_all_available_schemata(
        cfg_data["galant_schemata_filepath"]
    )
    cfg_data["forms"] = get_all_available_forms(cfg_data["comp_form_filepath"])
    cfg_data["time_signatures"] = get_all_available_time_signatures(
        cfg_data["comp_form_filepath"]
    )

    return cfg_data


def print_char_line(char, num_chars):
    out = ""
    for x in range(num_chars):
        out = out + char
    return out


def print_frame(str, data_dict, other_dict):
    char_div1 = "="
    char_div2 = "-"
    char_div3 = "·"

    spacing = 2
    dash_margin = 6
    totwidth = (spacing + dash_margin) * 2 + len(str)

    heading_dash_unit = print_char_line(char_div1, dash_margin)
    footer_line = print_char_line(char_div2, totwidth)
    divider_line = print_char_line(char_div3, totwidth)

    output = f"\n\n{heading_dash_unit} {str} {heading_dash_unit}\n"

    for dkey, dvalue in data_dict.items():
        output = output + f"{dkey}: {dvalue}\n"

    output = output + "\n"

    for okey, ovalue in other_dict.items():
        output = output + f"{okey}: {ovalue}\n"

    output = output + f"{footer_line}\n\n"

    print(output)

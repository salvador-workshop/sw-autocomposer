import os, json

file_dir = os.path.dirname(os.path.realpath(__file__))
repo_root_dir = os.path.join(file_dir, "../../")
output_dir = os.path.join(repo_root_dir, "output")
src_dir = os.path.join(repo_root_dir, "src")


def get_cfg_data():
    cfg_data = {
        "repo_root_dir": repo_root_dir,
        "output_dir": output_dir,
        "src_dir": src_dir,
        "cfg_filename": "autocomposer.config.json",
    }

    cfg_data["cfg_filepath"] = os.path.join(repo_root_dir, cfg_data["cfg_filename"])
    cfg_data["data_dir"] = os.path.join(src_dir, "sw_autocomposer/data")

    with open(f"{cfg_data['cfg_filepath']}", "r") as file:
        cfg_json = json.load(file)
        cfg_data["output_dir_ly"] = os.path.join(
            repo_root_dir, cfg_json["paths"]["outputDirectoryLy"]
        )
        cfg_data["output_dir_pdf"] = os.path.join(
            repo_root_dir, cfg_json["paths"]["outputDirectoryPdf"]
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

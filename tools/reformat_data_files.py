#!/usr/bin/python3

import os
import sys
import re
from disassemble import get_z_name

script_dir = os.path.dirname(os.path.realpath(__file__))
root_dir = f"{script_dir}/../"
data_dir = f"{root_dir}data/overlays"
asm_dir = f"{root_dir}asm/non_matchings/overlays"


def rename(old_name, new_name):
    for root, dirs, files in os.walk(asm_dir):
        for file in files:
            file_path = os.path.join(root, file)
            with open(file_path) as f:
                file_text = f.read()
            new_file_text = file_text.replace(old_name, new_name)
            if file_text != new_file_text:
                with open(file_path, "w", newline="\n") as f:
                    f.write(new_file_text)


def rename_l(old_name, new_name):
    for root, dirs, files in os.walk(asm_dir):
        for file in files:
            file_path = os.path.join(root, file)
            with open(file_path) as f:
                file_text = f.read()
            new_file_text = file_text.replace(f"{old_name}:", f"glabel {new_name}")
            new_file_text = new_file_text.replace(old_name, new_name)
            if file_text != new_file_text:
                with open(file_path, "w", newline="\n") as f:
                    f.write(new_file_text)


def handle_jtbl(match):
    match = match.group()
    split = match.replace(":", "").split(" ")
    lbl_name = split[0]
    new_lbl_name = f"jtbl_{lbl_name[2:]}"
    rename(lbl_name, new_lbl_name)
    return f"glabel {new_lbl_name}" + "\n.word .L"


def handle_data_line(match):
    match = match.group()
    return f"glabel {match[:-1]}" + "\n"


def handle_word_l(match):
    match = match.group()
    split = match.split(" ")
    lbl_name = split[1]
    new_lbl_name = split[1][1:]
    rename_l(lbl_name, new_lbl_name)
    return f".word {new_lbl_name}"


def main():
    preamble = ".include \"macro.inc\"\n\n # assembler directives\n .set noat      # allow manual use of $at\n .set noreorder # don't insert nops after branches\n .set gp=64     # allow use of 64-bit general purpose registers\n\n"

    for root, dirs, files in os.walk(data_dir):
        for file in files:
            file_path = os.path.join(root, file)
            with open(file_path) as f:
                file_text = f.read()

            file_text = preamble + file_text
            file_text = re.sub("D_.*: .word .L", handle_jtbl, file_text)
            file_text = re.sub("D_.*:", handle_data_line, file_text)
            file_text = re.sub(".word .L........", handle_word_l, file_text)
            file_text = re.sub("\n\n    ", "\n    ", file_text)

            with open(file_path, "w", newline="\n") as f:
                f.write(file_text)


main()

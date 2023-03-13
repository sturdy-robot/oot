import os
import sys

with open("spec", "r") as specFile:
    specText = specFile.read();
specLines = specText.split("\n");

# TODO: CLEAN THIS UP!
for i in range(len(specLines)):
    line = specLines[i]
    if (line.startswith("INCLUDE_SEG_SCENE")):
        params = line.split("(")[1].split(")")[0].split(",")
        for j in range(len(params)):
            while (params[j].startswith(" ")):
                params[j] = params[j][1:]

        line = "beginseg\r\n";
        line += "\tname " + params[0] + "\r\n";
        line += "\tromalign 0x1000\r\n";
        line += "\tinclude " + params[1] + "\r\n";
        line += "\taddress SEGMENT_SCENE\r\n";
        line += "endseg\r\n";
    elif (line.startswith("INCLUDE_SEG_ROOM")):
        params = line.split("(")[1].split(")")[0].split(",")
        for j in range(len(params)):
            while (params[j].startswith(" ")):
                params[j] = params[j][1:]

        line = "beginseg\r\n";
        line += "\tname " + params[0] + "\r\n";
        line += "\tromalign 0x1000\r\n";
        line += "\tinclude " + params[1] + "\r\n";
        line += "\taddress SEGMENT_ROOM\r\n";
        line += "endseg\r\n";
    elif (line.startswith("INCLUDE_SEG_OBJECT")):
        params = line.split("(")[1].split(")")[0].split(",")
        for j in range(len(params)):
            while (params[j].startswith(" ")):
                params[j] = params[j][1:]

        line = "beginseg\r\n";
        line += "\tname " + params[0] + "\r\n";
        line += "\tromalign 0x1000\r\n";
        line += "\tinclude " + params[1] + "\r\n";
        line += "\taddress SEGMENT_OBJECT\r\n";
        line += "endseg\r\n";


    line += "\r\n";
    specLines[i] = line;

with open("build/spec_preproc", "w") as specOut:
    specOut.writelines(specLines);

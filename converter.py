#!/usr/bin/env python3

import fire
import lxml.etree as ET


def convert(xml_path, xsl_path, xml_output):
    with open(xsl_path) as xsl_fd:
        xsl = ET.parse(xsl_fd)
    transformer = ET.XSLT(xsl)
    with open(xml_path) as xml_fd:
        xml = ET.parse(xml_fd)
    transformered = transformer(xml)
    with open(xml_output, "wb") as output_fd:
        output_fd.write(ET.tostring(transformered, pretty_print=True))


if __name__ == "__main__":
    fire.Fire(convert)

import os
import argparse

import sys
sys.path.append("..")
sys.path.append("../code_reference/nl4opt-subtask2-baseline")

import parsers
import jsonlines
import json
import prettyprinter as pp

pp.install_extras(exclude=['python', 'django'])

def format(var_id, coef):
    ans = ""
    if var_id == 0:
        ans = f"{coef}x_{var_id}"
        return ans

    if coef < 0:
        ans += f" - {-coef}x_{var_id}"
    else:
        ans += f" + {coef}x_{var_id}"
    return ans


def generate_output(true_formulation, direction):
    # entities:
    entities = true_formulation.entities

    num = 0
    for entity in entities:
        num = max(num, entities[entity])

    visited = set()
    output = "Let "
    for i, entity in enumerate(entities):
        id =  entities[entity]
        if id in visited:
            continue
        visited.add(id)

        if i == num:
            output += f"x_{id} to represent {entity}."
        else:
            output += f"x_{id} to represent {entity}, "

    t1 = parsers.convert_to_canonical(true_formulation)
    # objective function
    output += f" Then the optimization problem is:\n{direction}:\n"

    for i, coef in enumerate(t1.objective):
        coef = round(coef, 2)
        # -0.0 -> 0.0
        if coef == -0.0:
            coef = 0.0

        output += format(i, coef)

    # constrains
    output += "\nsubject to:\n"

    for constraint in t1.constraints:
        for i, coef in enumerate(constraint):
            coef = round(coef, 2)
            # -0.0 -> 0.0
            if coef == -0.0:
                coef = 0.0

            if i <= len(constraint) - 2:
                output += format(i, coef)
            else:
                output += f" <= {coef}\n"
    return output


def process(input_path, output_path):
    # write "instruction": document, "output": output into a jsonl file in output_path
    json_parser = parsers.JSONFormulationParser()
    json_output = []

    with jsonlines.open(input_path) as reader:
        for line in reader.iter():
            true_formulation = json_parser.parse(line)

            document = line[list(line.keys())[0]]['document']
            direction = line[list(line.keys())[0]]['obj_declaration']['direction']
            output = generate_output(true_formulation, direction)


            conversation = \
            {
                "conversations": [
                    {
                        "from": "user",
                        "value": document
                    },
                    {
                        "from": "assistant",
                        "value": output
                    }
                ]
            }
            json_output.append(conversation)

    with open(output_path, 'w', encoding='utf-8') as f:
        json.dump(json_output, f, ensure_ascii=False, indent=2)


def main(input_folder, output_folder):
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    files = ['train', 'test', 'dev']
    for file in files:
        input_path = os.path.join(input_folder, file + '.jsonl')
        output_path = os.path.join(output_folder, file + '.json')
        process(input_path, output_path)


if __name__ == '__main__':
    argparser = argparse.ArgumentParser(description='Process data')
    argparser.add_argument('--input_folder', type=str, default='.\data\origin_data', help='Input folder')
    argparser.add_argument('--output_folder', type=str, default='.\data\processed_data', help='Output folder')
    args = argparser.parse_args()

    main(args.input_folder, args.output_folder)
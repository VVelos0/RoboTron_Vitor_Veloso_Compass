import json

def retornar_json():
    with open ("TestePartidaJSON.json",  encoding="utf - 8") as json_normal:

        json_manipulavel = json.load("json_normal")
        return json_manipulavel
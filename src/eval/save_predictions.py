import csv
import json
import os
import sys

def save_predictions(input_csv_path, prediction_file_path):
    """
    Save the predictions in results_sql.csv to the given experiment directory
    """
    predictions = []

    with open(input_csv_path, 'r') as file:
        reader = csv.reader(file, quoting=csv.QUOTE_ALL)
        predictions.extend(line[1] for line in reader)
    out_filename = prediction_file_path # os.path.join(experiment_path, 'predictions.json')
    print(f">>>>>>>>>>{out_filename}")

    with open(out_filename, 'r') as file:
        predictions_content = json.loads(file.read())

    for pred,instance in zip(predictions, predictions_content):
        instance['prediction'] = pred

    with open(out_filename, 'w') as file:
        json.dump(predictions_content, file, indent=4)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("save_predictions() takes 1 argument: the path to the experiment directory")
    else:
        experiment_path = sys.argv[1]
        save_predictions('results_sql.csv', experiment_path)


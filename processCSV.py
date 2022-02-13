import sys
import csv
maxInt = sys.maxsize

while True:
    # decrease the maxInt value by factor 10
    # as long as the OverflowError occurs.

    try:
        csv.field_size_limit(maxInt)
        break
    except OverflowError:
        maxInt = int(maxInt/10)

with open('/mnt/c/Users/Victor/Desktop/rodo.csv', newline='', encoding='Latin1') as file1, open('/mnt/c/Users/Victor/Desktop/rodogeom.csv', newline='', encoding='Latin1') as file2, open('Rodovias.csv', 'w', newline='', encoding='Latin1') as dest:
    file1_content = list(csv.reader(file1, delimiter=","))
    file2_content = list(csv.reader(file2, delimiter=';'))
    rows = []
    for index in range(len(file1_content)):
        rows.append(file1_content[index] + file2_content[index])
    writer = csv.writer(dest, delimiter=';')
    writer.writerows(rows)

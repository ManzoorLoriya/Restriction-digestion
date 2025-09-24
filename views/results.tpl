<html>
<head>
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
  border: 1px solid #ddd;
}

th {
  background-color: #f2f2f2;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}

.enzyme-table {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

.enzyme-table td, .enzyme-table th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align: left;
}

.enzyme-table tr:nth-child(even) {
  background-color: #f2f2f2;
}

.enzyme-table tr:hover {
  background-color: #ddd;
}

.enzyme-table th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}

.enzyme-table .enzyme-column {
  width: 20%;
}

.enzyme-table .cut-positions-column {
  width: 40%;
}

.enzyme-table .blunt-column {
  width: 10%;
}

.enzyme-table .site-length-column {
  width: 10%;
}

.enzyme-table .number-of-cuts-column {
  width: 10%;
}
</style>
</head>
<body>
    <h1>Results</h1>
    <table border="1">
        <tr>
            <th>Enzyme</th>
            <th>Cut Positions</th>
            <th>Blunt Cut</th>
            <th>Site Length</th>
            <th>Number of Cuts</th>
        </tr>
        % for enzyme, info in results.items():
            <tr>
                <td>{{ enzyme }}</td>
                <td>{{ info['cut_positions'] }}</td>
                <td>{{ info['is_blunt'] }}</td>
                <td>{{ info['site_length'] }}</td>
                <td>{{ info['cuts_count'] }}</td>
            </tr>
        % end
    </table>

    <h2>Enzymes that do not cut the sequence:</h2>
    <ul>
    % for enzyme in enzymes_not_cutting:
        <li>{{ enzyme }}</li>
    % end
    </ul>
</body>
</html>

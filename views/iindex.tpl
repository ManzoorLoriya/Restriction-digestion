<html>
<head>
<style>
body {
  font-family: Arial, sans-serif;
  background-color: #f4f4f4;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  margin: 0;
  padding: 0;
}

h1 {
  color: #333;
  font-size: 3rem;
  margin-bottom: 2rem;
}

input[type="text"] {
  padding: 10px;
  border: 1px solid #ddd;
  border-radius: 4px;
  margin-bottom: 1rem;
  width: 300px;
}

button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  border-radius: 4px;
  cursor: pointer;
}

button:hover {
  background-color: #45a049; /* Darker green on hover */
}

.results {
  margin-top: 2rem;
  padding: 1rem;
  border: 1px solid #ddd;
  border-radius: 4px;
  background-color: #fff;
}

.result-item {
  margin-bottom: 0.5rem;
}

.result-item span {
  font-weight: bold;
}
</style>
</head>
<body>
    <h1>DNA Restriction Site Finder</h1>
    <form action="/results" method="post">
        Enter DNA sequence: <input type="text" name="dna_seq" />
        <input type="submit" value="Submit">
    </form>
</body>
</html>

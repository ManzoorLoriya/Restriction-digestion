from bottle import Bottle, template, request
from Bio.Seq import Seq
from Bio.Restriction import *
from Bio import Restriction
from Bio.Restriction.Restriction import CommOnly

app = Bottle()

# Function to find restriction sites using all enzymes
def find_restriction_sites(dna_seq):
    seq = Seq(dna_seq)
    enzymes = AllEnzymes  
    results = {}
    enzymes_not_cutting = []

    for enzyme in enzymes:
        analysis = Restriction.Analysis(Restriction.RestrictionBatch([enzyme]), seq)
        cut_sites = analysis.full()

        if enzyme in cut_sites and cut_sites[enzyme]:
            results[enzyme.__name__] = {
                'cut_positions': cut_sites[enzyme],
                'is_blunt': enzyme.is_blunt(),
                'site_length': len(enzyme.site),
                'cuts_count': len(cut_sites[enzyme])
            }
        else:
            enzymes_not_cutting.append(enzyme.__name__)

    return results, enzymes_not_cutting

# Home route to display the form for DNA input
@app.route('/')
def home():
    return template('WebPython/views/iindex.tpl')  

# Route to handle form submission and display results
@app.route('/results', method="POST")
def results():
    dna_seq = request.forms.get('dna_seq')
    if dna_seq:
        results, enzymes_not_cutting = find_restriction_sites(dna_seq)
        return template('WebPython/views/results.tpl', results=results, enzymes_not_cutting=enzymes_not_cutting)
    return "Please provide a valid DNA sequence."

# To run the Bottle app
if __name__ == "__main__":
    app.run(host='localhost', port=8080, debug=True)

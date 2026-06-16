from flask import Flask, jsonify

app = Flask(__name__)

claims = [
    {
        "id": 1001,
        "claimType": "Auto",
        "status": "Open",
        "amount": 1500.00
    },
    {
        "id": 1002,
        "claimType": "Property",
        "status": "Review",
        "amount": 4200.00
    }
]

@app.route("/")
def home():
    return jsonify({
        "application": "claims-api",
        "environment": "dev",
        "status": "healthy"
    })

@app.route("/health")
def health():
    return jsonify({
        "status": "UP"
    })

@app.route("/claims")
def get_claims():
    return jsonify(claims)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
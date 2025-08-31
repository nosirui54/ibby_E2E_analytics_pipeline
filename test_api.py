import requests

API_ENDPOINTS = {
    "orders": "https://fakestoreapi.com/carts",
    "products": "https://fakestoreapi.com/products",
    "users": "https://fakestoreapi.com/users",
}

for name, url in API_ENDPOINTS.items():
    try:
        response = requests.get(url)
        response.raise_for_status()
        data = response.json()
        print(f"{name.upper()}: {len(data)} records fetched.")
    except Exception as e:
        print(f"{name.upper()}: Error -> {e}")
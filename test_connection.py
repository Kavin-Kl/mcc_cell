import pymysql
import sys

print("Testing MySQL connection...")
print()

# Try different ports
ports_to_test = [3306, 3307]

for port in ports_to_test:
    print(f"Testing port {port}...")
    try:
        conn = pymysql.connect(
            host='localhost',
            user='root',
            password='',
            port=port,
            connect_timeout=5
        )
        print(f"  [SUCCESS] Connected on port {port}!")

        cursor = conn.cursor()
        cursor.execute("SHOW DATABASES;")
        databases = cursor.fetchall()
        print(f"  Databases: {[db[0] for db in databases]}")

        conn.close()
        print()
    except Exception as e:
        print(f"  [FAILED] Port {port}: {e}")
        print()

print("=" * 60)
print("If you see SUCCESS above, use that port number.")
print("=" * 60)

import os
import sys

# Thêm thư mục gốc vào sys.path để Vercel Serverless Function nhận diện đúng app.py và các package
root_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
if root_dir not in sys.path:
    sys.path.insert(0, root_dir)

from app import app

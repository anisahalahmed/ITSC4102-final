import os
from datetime import datetime

SOURCE = "./documents"
DEST = "./backup"
DATE = datetime.now().strftime("%Y-%m-%d")

backup_dir = f"{DEST}/{DATE}"
if not os.path.exists(backup_dir):
	os.makedirs(backup_dir)

cp -r f"{SOURCE}" f"{DEST}/{DATE}"

echo f"Backup completed on {DATE}"

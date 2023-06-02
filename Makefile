create-venv:
	python3.11 -m venv notionqavenv

venv-active:
	. notionqavenv/bin/activate

venv-deactivate:
	deactivate

requirements-install:
	pip install -r requirements.txt
	pip install faiss-cpu

requirements-freeze:
	pip freeze > requirements.txt

qa-example:
	python3 qa.py "is there food in the office?"

set-notion-db:
	unzip Export-d3adfe0f-3131-4bf3-8987-a52017fc1bae.zip -d Notion_DB
	python3 ingest.py

run:
	streamlit run main.py
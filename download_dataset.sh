#!/bin/bash
# for i in {1..15}; do
#     hf download allenai/olmOCR-synthmix-1025 --repo-type dataset --local-dir ../datasets/olmOCR-synthmix-1025;
#     sleep 300;
# done


python -m olmocr.data.prepare_olmocrmix --dataset-path allenai/olmOCR-mix-1025 --destination ../datasets/olmOCR-mix-1025-extracted --subset 00_documents --split train                       
python -m olmocr.data.prepare_olmocrmix --dataset-path allenai/olmOCR-mix-1025 --destination ../datasets/olmOCR-mix-1025-extracted --subset 00_documents --split eval

python -m olmocr.data.prepare_olmocrmix --dataset-path allenai/olmOCR-mix-1025 --destination ../datasets/olmOCR-mix-1025-extracted --subset 01_books --split train                       
python -m olmocr.data.prepare_olmocrmix --dataset-path allenai/olmOCR-mix-1025 --destination ../datasets/olmOCR-mix-1025-extracted --subset 01_books --split eval

python -m olmocr.data.prepare_olmocrmix --dataset-path allenai/olmOCR-mix-1025 --destination ../datasets/olmOCR-mix-1025-extracted --subset 02_loc_transcripts --split train                       
python -m olmocr.data.prepare_olmocrmix --dataset-path allenai/olmOCR-mix-1025 --destination ../datasets/olmOCR-mix-1025-extracted --subset 02_loc_transcripts --split eval

python -m olmocr.data.prepare_olmocrmix --dataset-path allenai/olmOCR-mix-1025 --destination ../datasets/olmOCR-mix-1025-extracted --subset 03_national_archives --split train                       
python -m olmocr.data.prepare_olmocrmix --dataset-path allenai/olmOCR-mix-1025 --destination ../datasets/olmOCR-mix-1025-extracted --subset 03_national_archives --split eval
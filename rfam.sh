mysql --user rfamro --host mysql-rfam-public.ebi.ac.uk --port 4497 --database Rfam -e "SELECT fr.rfam_acc, fr.rfamseq_acc, fr.seq_start, fr.seq_end, f.type FROM full_region fr, rfamseq rf, taxonomy tx, family f WHERE rf.ncbi_id = tx.ncbi_id AND f.rfam_acc = fr.rfam_acc AND fr.rfamseq_acc = rf.rfamseq_acc AND tx.tax_string LIKE '%Mammalia%' AND f.type LIKE '%snoRNA%' AND is_significant = 1 limit 5;"
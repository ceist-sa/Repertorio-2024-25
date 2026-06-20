pdftk \
A=snippets/PIANO/n10.pdf \
B=snippets/PIANO/n21.pdf
cat A B \
output "partes/PIANO - Mozart - A Flauta Mágica.pdf"

pdftk \
originais-flattened/violinI.pdf \
cat 1-33 36-53 64-72 \
output "partes/VIOLIN I - Mozart - A Flauta Mágica.pdf"

pdftk \
A=originais-flattened/violinII.pdf \
B=snippets/"VIOLIN II"/replace_page_43.pdf \
cat A1-42 B A44-53 A64-70 output "partes/VIOLIN II - Mozart - A Flauta Mágica.pdf"

pdftk \
originais-flattened/viola.pdf \
cat 1-29 32-47 56-62 \
output "partes/VIOLA - Mozart - A Flauta Mágica.pdf"

pdftk \
A=originais-flattened/flute1.pdf \
B=snippets/"FLUTE I"/cover-pdfjam.pdf \
cat B A1-27 A33-38 \
output "partes/FLUTE I - Mozart - A Flauta Mágica.pdf"

pdftk \
A=originais-flattened/flute2_piccolo.pdf \
B=snippets/"FLUTE II"/cover-pdfjam.pdf \
cat B A1-17 A20-22 \
output "partes/FLUTE II - PICCOLO - Mozart - A Flauta Mágica.pdf"


pdftk \
A=originais-flattened/bassoon1.pdf \
B=snippets/"BASSOON I"/cover-pdfjam.pdf \
C=snippets/"BASSOON I"/replace_page_8.pdf \
D=snippets/"BASSOON I"/replace_page_15.pdf \
E=snippets/"BASSOON I"/replace_page_18.pdf \
F=snippets/"BASSOON I"/replace_page_22.pdf \
cat B A1-7 C A9-14 D A16-17 E A19-21 F A23-32 A39-43 \
output "partes/BASSOON I - Mozart - A Flauta Mágica.pdf"
		
pdftk \
A=originais-flattened/bassoon2.pdf \
B=snippets/"BASSOON II"/cover-pdfjam.pdf \
C=snippets/"BASSOON II"/replace_pages_1-2.pdf \
D=snippets/"BASSOON II"/replace_page_8.pdf \
E=snippets/"BASSOON II"/replace_page_14.pdf \
F=snippets/"BASSOON II"/replace_page_17.pdf \
G=snippets/"BASSOON II"/replace_page_21.pdf \
H=snippets/"BASSOON II"/replace_page_22.pdf \
cat B C A3-7 D A9-13 E A15-16 F A18-20 G H A23-28 A36-39 \
output "partes/BASSOON II - Mozart - A Flauta Mágica.pdf"

pdftk \
A=originais-flattened/cellos_basses.pdf \
B=snippets/CELLO/replace_page_4.pdf \
cat A1-3 B A5-47 A60-66 \
output "partes/CELLO - Mozart - A Flauta Mágica.pdf"


# fix scaling
pdfjam --paper a4paper --scale 1.1 --outfile "partes/VIOLIN I - Mozart - A Flauta Mágica.pdf" -- "partes/VIOLIN I - Mozart - A Flauta Mágica.pdf"
pdfjam --paper a4paper --scale 1.1 --outfile "partes/VIOLIN II - Mozart - A Flauta Mágica.pdf" -- "partes/VIOLIN II - Mozart - A Flauta Mágica.pdf"
pdfjam --paper a4paper --scale 1.1 --outfile "partes/VIOLA - Mozart - A Flauta Mágica.pdf" -- "partes/VIOLA - Mozart - A Flauta Mágica.pdf"
pdfjam --paper a4paper --scale 1.1 --outfile "partes/CELLO - Mozart - A Flauta Mágica.pdf" -- "partes/CELLO - Mozart - A Flauta Mágica.pdf"
pdfjam --paper a4paper --scale 1.1 --outfile "partes/FLUTE I - Mozart - A Flauta Mágica.pdf" -- "partes/FLUTE I - Mozart - A Flauta Mágica.pdf"
pdfjam --paper a4paper --scale 1.1 --outfile "partes/FLUTE II - PICCOLO - Mozart - A Flauta Mágica.pdf" -- "partes/FLUTE II - PICCOLO - Mozart - A Flauta Mágica.pdf"

# for some reason, these two, and only these two, do not work
pdfjam --paper a4paper --scale 1.1 --outfile "partes/BASSOON I - Mozart - A Flauta Mágica.pdf" -- "partes/BASSOON I - Mozart - A Flauta Mágica.pdf"
pdfjam --paper a4paper --scale 1.1 --outfile "partes/BASSOON II - Mozart - A Flauta Mágica.pdf" -- "partes/BASSOON II - Mozart - A Flauta Mágica.pdf"
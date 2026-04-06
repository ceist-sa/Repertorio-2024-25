pdftk originais/violinI.pdf cat 1-33 36-53 64-72 output "partes/VIOLIN I - Mozart - A Flauta Mágica.pdf"

pdftk \
A=originais/violinII.pdf \
B=snippets/"VIOLIN II"/replace_page_43.pdf \
cat A1-42 B A44-53 A64-70 output "partes/VIOLIN II - Mozart - A Flauta Mágica.pdf"

pdftk originais/viola.pdf cat 1-29 32-47 56-62 output "partes/VIOLA - Mozart - A Flauta Mágica.pdf"

pdftk originais/flute1.pdf cat 1-27 34-38 output "partes/FLUTE I - Mozart - A Flauta Mágica.pdf"

pdftk originais/flute2_piccolo.pdf cat 1-17 20-22 output "partes/FLUTE II - PICCOLO - Mozart - A Flauta Mágica.pdf"


pdftk 	A=originais/bassoon1.pdf 
		B=snippets/"BASSOON I"/cover.pdf 
		C=snippets/"BASSOON I"/replace_page_8.pdf
		D=snippets/"BASSOON I"/replace_page_15.pdf
		E=snippets/"BASSOON I"/replace_page_18.pdf
		F=snippets/"BASSOON I"/replace_page_20.pdf
		cat B A1-7 C A9-14 D A16-17 E A19 F A21-end
		output "partes/BASSOON I - Mozart - A Flauta Mágica.pdf"
		
pdftk \
A=originais/bassoon2.pdf \
B=snippets/"BASSOON II"/cover.pdf \
C=snippets/"BASSOON II"/replace_pages_1-2.pdf \
D=snippets/"BASSOON II"/replace_page_8.pdf \
E=snippets/"BASSOON II"/replace_page_14.pdf \
F=snippets/"BASSOON II"/replace_page_17.pdf \
G=snippets/"BASSOON II"/replace_page_21.pdf \
H=snippets/"BASSOON II"/replace_page_22.pdf \
cat B C A3-7 D A9-13 E A15-16 F A18-20 G H A23-end \
output "partes/BASSOON II - Mozart - A Flauta Mágica.pdf"

pdftk \
A=originais/cellos_basses.pdf \
B=snippets/CELLO/replace_page_4.pdf \
cat A1-3 B A5-47 A60-66 \
output "partes/CELLO - Mozart - A Flauta Mágica.pdf"
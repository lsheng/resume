all: lsheng-resume.html lsheng-resume.pdf lsheng-resume.docx lsheng-resume.txt

lsheng-resume.html: lsheng-resume.md style.css
	pandoc --standalone -c style.css --from markdown --to html -o lsheng-resume.html lsheng-resume.md

lsheng-resume.pdf: lsheng-resume.html
	wkhtmltopdf lsheng-resume.html lsheng-resume.pdf

lsheng-resume.docx: lsheng-resume.md
	pandoc --from markdown --to docx -o lsheng-resume.docx lsheng-resume.md

lsheng-resume.txt: lsheng-resume.md
	pandoc --standalone --smart --from markdown --to plain -o lsheng-resume.txt lsheng-resume.md

clean:
	rm -f *.html *.pdf *.docx *.txt

#! /usr/bin/make -f

PRJNAME = swfput-1

SRCS = ${PRJNAME}.php \
	Options_0_0_2.inc.php \
	OptField_0_0_2.inc.php \
	OptSection_0_0_2.inc.php \
	OptPage_0_0_2.inc.php

DOCSD = docs
JSDIR = js
JSBIN = $(JSDIR)/formxed.js
JSSRC = $(JSDIR)/formxed.dev.js
SDIRI = mingtest
SDIRO = mingput
SSRCS = $(SDIRI)/mingput.php $(SDIRI)/mainact.inc.php $(SDIRI)/obj.css
SBINS = $(SDIRI)/default.flv \
	$(SDIRI)/mingput.swf \
	$(SDIRI)/mingput44.swf \
	$(SDIRI)/mingput40.swf \
	$(SDIRI)/mingput36.swf \
	$(SDIRI)/mingput32.swf \
	$(SDIRI)/mingput28.swf \
	$(SDIRI)/mingput24.swf

ALSO = Makefile COPYING
READS= README README.tty README.tt8 README.pdf README.html
ZALL = ${SRCS} ${ALSO} ${READS} readme.txt
ZSALL = ${SSRCS} ${SBINS}
BINALL = ${SBINS} ${JSBIN}
PRJDIR = ${PRJNAME}
PRJSDIR = ${PRJNAME}/${SDIRO}
PRJZIP = ${PRJNAME}.zip

ZIP = zip -r -9 -v -T -X
PHPCLI = php -f

all: ${PRJZIP}

${PRJZIP}: ${SBINS} ${JSBIN} ${ZALL}
	test -e ttd && rm -rf ttd; test -e ${PRJDIR} && mv ${PRJDIR} ttd; \
	mkdir ${PRJDIR} ${PRJSDIR} && \
	cp -r -p ${ZALL} ${JSDIR} ${DOCSD} ${PRJDIR} && \
	( cd ${PRJDIR}/${DOCSD} && make clean; true ) && \
	cp -r -p ${ZSALL} ${PRJSDIR} && rm -f ${PRJZIP} && \
	$(ZIP) ${PRJZIP} ${PRJDIR} && rm -rf ${PRJDIR} && \
	(test -e ttd && mv ttd ${PRJDIR}; ls -l ${PRJZIP})

$(SDIRI)/default.flv: $(SDIRI)/droptest.flv
	ln $(SDIRI)/droptest.flv $(SDIRI)/default.flv

$(SDIRI)/mingput.swf: $(SDIRI)/mingput.php $(SDIRI)/mainact.inc.php
	$(PHPCLI) $(SDIRI)/mingput.php > $(SDIRI)/mingput.swf

$(SDIRI)/mingput44.swf: $(SDIRI)/mingput.php $(SDIRI)/mainact.inc.php
	$(PHPCLI) $(SDIRI)/mingput.php -- BH=44 > $(SDIRI)/mingput44.swf

$(SDIRI)/mingput40.swf: $(SDIRI)/mingput.php $(SDIRI)/mainact.inc.php
	$(PHPCLI) $(SDIRI)/mingput.php -- BH=40 > $(SDIRI)/mingput40.swf

$(SDIRI)/mingput36.swf: $(SDIRI)/mingput.php $(SDIRI)/mainact.inc.php
	$(PHPCLI) $(SDIRI)/mingput.php -- BH=36 > $(SDIRI)/mingput36.swf

$(SDIRI)/mingput32.swf: $(SDIRI)/mingput.php $(SDIRI)/mainact.inc.php
	$(PHPCLI) $(SDIRI)/mingput.php -- BH=32 > $(SDIRI)/mingput32.swf

$(SDIRI)/mingput28.swf: $(SDIRI)/mingput.php $(SDIRI)/mainact.inc.php
	$(PHPCLI) $(SDIRI)/mingput.php -- BH=28 > $(SDIRI)/mingput28.swf

$(SDIRI)/mingput24.swf: $(SDIRI)/mingput.php $(SDIRI)/mainact.inc.php
	$(PHPCLI) $(SDIRI)/mingput.php -- BH=24 > $(SDIRI)/mingput24.swf

${JSBIN}: ${JSSRC}
	(P=`which perl` && $$P -e 'use JavaScript::Minifier qw(minify);minify(input=>*STDIN,outfile=>*STDOUT)' < ${JSSRC} > ${JSBIN} 2>/dev/null) \
	|| (P=`which perl` && $$P -e \
		'use JavaScript::Packer;$$p=JavaScript::Packer->init();$$o=join("",<STDIN>);$$p->minify(\$$o,{"compress"=>"clean"});print STDOUT $$o;' < ${JSSRC} > ${JSBIN}) \
	|| cp -f ${JSSRC} ${JSBIN}

$(READS): docs/readme.roff
	(cd docs && make txt tty tt8 pdf html && \
	cp -f README.txt README.tty README.tt8 README.pdf README.html ..)
	rm -f README; mv README.txt README

clean-docs:
	cd docs && make clean

clean: clean-docs
	rm -f ${PRJZIP} ${BINALL}

cleanall: clean
	rm -f $(READS)

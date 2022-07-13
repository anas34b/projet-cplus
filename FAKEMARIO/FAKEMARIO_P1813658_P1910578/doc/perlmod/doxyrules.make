DOXY_EXEC_PATH = /home/aneos/Bureau/lifap4/FAKEMARIO_P1813658
DOXYFILE = /home/aneos/Bureau/lifap4/FAKEMARIO_P1813658/doc/image.doxy
DOXYDOCS_PM = /home/aneos/Bureau/lifap4/FAKEMARIO_P1813658/doc/perlmod/DoxyDocs.pm
DOXYSTRUCTURE_PM = /home/aneos/Bureau/lifap4/FAKEMARIO_P1813658/doc/perlmod/DoxyStructure.pm
DOXYRULES = /home/aneos/Bureau/lifap4/FAKEMARIO_P1813658/doc/perlmod/doxyrules.make

.PHONY: clean-perlmod
clean-perlmod::
	rm -f $(DOXYSTRUCTURE_PM) \
	$(DOXYDOCS_PM)

$(DOXYRULES) \
$(DOXYMAKEFILE) \
$(DOXYSTRUCTURE_PM) \
$(DOXYDOCS_PM): \
	$(DOXYFILE)
	cd $(DOXY_EXEC_PATH) ; doxygen "$<"

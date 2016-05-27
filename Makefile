JAVAFILES = */*.java */*/*.java */*/*/*.java

PACKAGES = src src.java src.java.lang
DOCDIR = javadoc
ALLDOCDIR = javadoc-all

# Compile all Java files.
.PHONY : all-classes
all-classes :
	javac $(JAVAFILES)

# Delete all intermediate and final output and leave only the source.
.PHONY : clean
clean :
	rm -rf $(JAVAFILES:.java=.class) *.zip $(DOCDIR) $(ALLDOCDIR)

# Generate documentation for the public interfaces of the principal packages.
.PHONY : docs
docs :
	javadoc -private -d $(DOCDIR) $(PACKAGES)

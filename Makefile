 #variable for compiler flags (JFLAGS)
 # define a variable for the compiler (JC)  
 # #
 JFLAGS = -g
 JC = javac
 # #
 # # Clear any default targets for building .class files from .java files; we 
 # # will provide our own target entry to do this in this makefile.
 # # make has a set of default targets for different suffixes (like .c.o) 
 # # Currently, clearing the default for .java.class is not necessary since 
 # # make does not have a definition for this target, but later versions of 
 # # make may, so it doesn't hurt to make sure that we clear any default 
 # # definitions for these
 # #
.SUFFIXES: .java .class
 # #
 # # Here is our target entry for creating .class files from .java files 
 # # This is a target entry that uses the suffix rule syntax:
 # #	DSTS:
 # #		rule
 # # DSTS (Dependency Suffix Target Suffix)
 # # 'TS' is the suffix of the target file, 'DS' is the suffix of the dependency 
 # #  file, and 'rule'  is the rule for building a target	
 # # '$*' is a built-in macro that gets the basename of the current target 
 # # Remember that there must be a < tab > before the command line ('rule') 
 # #
.java.class:
	$(JC) $(JFLAGS) $*.java
 #
 # CLASSES is a macro consisting of several words (one for each java source file)
 # #   the backslash "\" at the end of the line is a line continuation character
 # *    so that the same line can continue over several lines 
CLASSES = \
	  Server.java \
	     Client.java
     #         Purchaser.java \
     #                 PurchaserList.java \
     #                         PurchaserListTest.java \
     #                                 SortedList.java \
     #                                         Supplier.java \
     #                                                 SupplierList.java \
     #                                                         LinearList.java 
 #                                                         #
 # the default make target entry
 # # for this example it is the target classe
default: classes
 # # Next line is a target dependency line
 # # This target entry uses Suffix Replacement within a macro: 
 # # $(macroname:string1=string2)
 # # In the words in the macro named 'macroname' replace 'string1' with 'string2'
 # # Below we are replacing the suffix .java of all words in the macro CLASSES 
 # # with the .class suffix
 # #
classes: $(CLASSES:.java=.class)
 # # this line is to remove all unneeded files from
 # # the directory when we are finished executing(saves space)
 # # and "cleans up" the directory of unneeded .class files
 # # RM is a predefined macro in make (RM = rm -f)
 # #
clean:
	$(RM) *.class
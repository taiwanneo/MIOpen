################################################################################
# 
# MIT License
# 
# Copyright (c) 2017 Advanced Micro Devices, Inc.
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
# 
################################################################################
include(CMakeParseArguments)
include(MainDoc)

find_program(DOXYGEN_EXECUTABLE NAMES doxygen
    PATH_SUFFIXES bin
    DOC "Doxygen documentation generator"
)
mark_as_advanced(DOXYGEN_EXECUTABLE)

find_path(DOT_EXECUTABLE NAMES dot
    PATH_SUFFIXES bin
    DOC "Graphviz"
)
mark_as_advanced(DOT_EXECUTABLE)

set(DOXYGEN_ARGS
ABBREVIATE_BRIEF
ALIASES
ALLEXTERNALS
ALLOW_UNICODE_NAMES
ALPHABETICAL_INDEX
ALWAYS_DETAILED_SEC
AUTOLINK_SUPPORT
BINARY_TOC
BRIEF_MEMBER_DESC
BUILTIN_STL_SUPPORT
CALLER_GRAPH
CALL_GRAPH
CASE_SENSE_NAMES
CHM_FILE
CHM_INDEX_ENCODING
CITE_BIB_FILES
CLANG_ASSISTED_PARSING
CLANG_OPTIONS
CLASS_DIAGRAMS
CLASS_GRAPH
COLLABORATION_GRAPH
COLS_IN_ALPHA_INDEX
COMPACT_LATEX
COMPACT_RTF
CPP_CLI_SUPPORT
CREATE_SUBDIRS
DIAFILE_DIRS
DIA_PATH
DIRECTORY_GRAPH
DISABLE_INDEX
DISTRIBUTE_GROUP_DOC
DOCBOOK_OUTPUT
DOCBOOK_PROGRAMLISTING
DOCSET_BUNDLE_ID
DOCSET_FEEDNAME
DOCSET_PUBLISHER_ID
DOCSET_PUBLISHER_NAME
DOTFILE_DIRS
DOT_CLEANUP
DOT_FONTNAME
DOT_FONTPATH
DOT_FONTSIZE
DOT_GRAPH_MAX_NODES
DOT_IMAGE_FORMAT
DOT_MULTI_TARGETS
DOT_NUM_THREADS
# DOT_PATH
DOT_TRANSPARENT
DOXYFILE_ENCODING
ECLIPSE_DOC_ID
ENABLED_SECTIONS
ENABLE_PREPROCESSING
ENUM_VALUES_PER_LINE
EXAMPLE_PATH
EXAMPLE_PATTERNS
EXAMPLE_RECURSIVE
EXCLUDE
EXCLUDE_PATTERNS
EXCLUDE_SYMBOLS
EXCLUDE_SYMLINKS
EXPAND_AS_DEFINED
EXPAND_ONLY_PREDEF
EXTENSION_MAPPING
EXTERNAL_GROUPS
EXTERNAL_PAGES
EXTERNAL_SEARCH
EXTERNAL_SEARCH_ID
EXTRACT_ALL
EXTRACT_ANON_NSPACES
EXTRACT_LOCAL_CLASSES
EXTRACT_LOCAL_METHODS
EXTRACT_PACKAGE
EXTRACT_PRIVATE
EXTRACT_STATIC
EXTRA_PACKAGES
EXTRA_SEARCH_MAPPINGS
EXT_LINKS_IN_WINDOW
FILE_PATTERNS
FILE_VERSION_FILTER
FILTER_PATTERNS
FILTER_SOURCE_FILES
FILTER_SOURCE_PATTERNS
FORCE_LOCAL_INCLUDES
FORMULA_FONTSIZE
FORMULA_TRANSPARENT
FULL_PATH_NAMES
GENERATE_AUTOGEN_DEF
GENERATE_BUGLIST
GENERATE_CHI
GENERATE_DEPRECATEDLIST
GENERATE_DOCBOOK
GENERATE_DOCSET
GENERATE_ECLIPSEHELP
GENERATE_HTML
GENERATE_HTMLHELP
GENERATE_LATEX
GENERATE_LEGEND
GENERATE_MAN
GENERATE_PERLMOD
GENERATE_QHP
GENERATE_RTF
GENERATE_TAGFILE
GENERATE_TESTLIST
GENERATE_TODOLIST
GENERATE_TREEVIEW
GENERATE_XML
GRAPHICAL_HIERARCHY
GROUP_GRAPHS
GROUP_NESTED_COMPOUNDS
# HAVE_DOT
HHC_LOCATION
HIDE_COMPOUND_REFERENCE
HIDE_FRIEND_COMPOUNDS
HIDE_IN_BODY_DOCS
HIDE_SCOPE_NAMES
HIDE_UNDOC_CLASSES
HIDE_UNDOC_MEMBERS
HIDE_UNDOC_RELATIONS
HTML_COLORSTYLE_GAMMA
HTML_COLORSTYLE_HUE
HTML_COLORSTYLE_SAT
HTML_DYNAMIC_SECTIONS
HTML_EXTRA_FILES
HTML_EXTRA_STYLESHEET
HTML_FILE_EXTENSION
HTML_FOOTER
HTML_HEADER
HTML_INDEX_NUM_ENTRIES
HTML_OUTPUT
HTML_STYLESHEET
HTML_TIMESTAMP
IDL_PROPERTY_SUPPORT
IGNORE_PREFIX
IMAGE_PATH
INCLUDED_BY_GRAPH
INCLUDE_FILE_PATTERNS
INCLUDE_GRAPH
INCLUDE_PATH
INHERIT_DOCS
INLINE_GROUPED_CLASSES
INLINE_INFO
INLINE_INHERITED_MEMB
INLINE_SIMPLE_STRUCTS
INLINE_SOURCES
INPUT
INPUT_ENCODING
INPUT_FILTER
INTERACTIVE_SVG
INTERNAL_DOCS
JAVADOC_AUTOBRIEF
LATEX_BATCHMODE
LATEX_BIB_STYLE
LATEX_CMD_NAME
LATEX_EXTRA_FILES
LATEX_EXTRA_STYLESHEET
LATEX_FOOTER
LATEX_HEADER
LATEX_HIDE_INDICES
LATEX_OUTPUT
LATEX_SOURCE_CODE
LATEX_TIMESTAMP
LAYOUT_FILE
LOOKUP_CACHE_SIZE
MACRO_EXPANSION
MAKEINDEX_CMD_NAME
MAN_EXTENSION
MAN_LINKS
MAN_OUTPUT
MAN_SUBDIR
MARKDOWN_SUPPORT
MATHJAX_CODEFILE
MATHJAX_EXTENSIONS
MATHJAX_FORMAT
MATHJAX_RELPATH
MAX_DOT_GRAPH_DEPTH
MAX_INITIALIZER_LINES
MSCFILE_DIRS
MSCGEN_PATH
MULTILINE_CPP_IS_BRIEF
OPTIMIZE_FOR_FORTRAN
OPTIMIZE_OUTPUT_FOR_C
OPTIMIZE_OUTPUT_JAVA
OPTIMIZE_OUTPUT_VHDL
OUTPUT_DIRECTORY
OUTPUT_LANGUAGE
PAPER_TYPE
PDF_HYPERLINKS
PERLMOD_LATEX
PERLMOD_MAKEVAR_PREFIX
PERLMOD_PRETTY
PERL_PATH
PLANTUML_CFG_FILE
PLANTUML_INCLUDE_PATH
PLANTUML_JAR_PATH
PREDEFINED
PROJECT_BRIEF
PROJECT_LOGO
PROJECT_NAME
PROJECT_NUMBER
QCH_FILE
QHG_LOCATION
QHP_CUST_FILTER_ATTRS
QHP_CUST_FILTER_NAME
QHP_NAMESPACE
QHP_SECT_FILTER_ATTRS
QHP_VIRTUAL_FOLDER
QT_AUTOBRIEF
QUIET
RECURSIVE
REFERENCED_BY_RELATION
REFERENCES_LINK_SOURCE
REFERENCES_RELATION
REPEAT_BRIEF
RTF_EXTENSIONS_FILE
RTF_HYPERLINKS
RTF_OUTPUT
RTF_SOURCE_CODE
RTF_STYLESHEET_FILE
SEARCHDATA_FILE
SEARCHENGINE
SEARCHENGINE_URL
SEARCH_INCLUDES
SEPARATE_MEMBER_PAGES
SERVER_BASED_SEARCH
SHORT_NAMES
SHOW_FILES
SHOW_GROUPED_MEMB_INC
SHOW_INCLUDE_FILES
SHOW_NAMESPACES
SHOW_USED_FILES
SIP_SUPPORT
SKIP_FUNCTION_MACROS
SORT_BRIEF_DOCS
SORT_BY_SCOPE_NAME
SORT_GROUP_NAMES
SORT_MEMBERS_CTORS_1ST
SORT_MEMBER_DOCS
SOURCE_BROWSER
SOURCE_TOOLTIPS
STRICT_PROTO_MATCHING
STRIP_CODE_COMMENTS
STRIP_FROM_INC_PATH
STRIP_FROM_PATH
SUBGROUPING
TAB_SIZE
TAGFILES
TCL_SUBST
TEMPLATE_RELATIONS
TOC_EXPAND
TOC_INCLUDE_HEADINGS
TREEVIEW_WIDTH
TYPEDEF_HIDES_STRUCT
UML_LIMIT_NUM_FIELDS
UML_LOOK
USE_HTAGS
USE_MATHJAX
USE_MDFILE_AS_MAINPAGE
USE_PDFLATEX
VERBATIM_HEADERS
WARNINGS
WARN_AS_ERROR
WARN_FORMAT
WARN_IF_DOC_ERROR
WARN_IF_UNDOCUMENTED
WARN_LOGFILE
WARN_NO_PARAMDOC
XML_OUTPUT
XML_PROGRAMLISTING
)

set(DOXYGEN_CONFIG_FILE "${CMAKE_CURRENT_BINARY_DIR}/doxygen/doxygen.conf" CACHE PATH "Path to generated doxygen configuration file")

function(add_doxygen_doc)
    set(options)
    set(oneValueArgs)
    set(multiValueArgs DEPENDS ${DOXYGEN_ARGS})

    cmake_parse_arguments(PARSE "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN})

    file(WRITE ${DOXYGEN_CONFIG_FILE} "# Auto-generated doxygen configuration file\n")

    foreach(ARG ${DOXYGEN_ARGS})
        if(PARSE_${ARG})
            string(REPLACE ";" " " ARG_VALUE ${PARSE_${ARG}})
            file(APPEND ${DOXYGEN_CONFIG_FILE} "\n${ARG} = ${ARG_VALUE}\n")
        endif()
    endforeach()

    if(PARSE_OUTPUT_DIRECTORY)
        if(NOT EXISTS ${PARSE_OUTPUT_DIRECTORY})
            file(MAKE_DIRECTORY ${PARSE_OUTPUT_DIRECTORY})
        endif()
    endif()

    if(DOT_EXECUTABLE)
        file(APPEND ${DOXYGEN_CONFIG_FILE} "\nDOT_PATH = \"${DOT_EXECUTABLE}\"\n")
        file(APPEND ${DOXYGEN_CONFIG_FILE} "\nHAVE_DOT = YES\n")
    else()
        file(APPEND ${DOXYGEN_CONFIG_FILE} "\nHAVE_DOT = NO\n")
    endif()

    add_custom_target(doxygen
        ${DOXYGEN_EXECUTABLE} ${DOXYGEN_CONFIG_FILE}
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
        COMMENT "Building documentation with doxygen"
    )
    mark_as_doc(doxygen)
    add_dependencies(doxygen ${PARSE_DEPENDS})
endfunction()

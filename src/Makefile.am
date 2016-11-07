
if BUILD_TESTS
  DO_TESTS = tests
endif

if NO_LIBFOMA
  DO_FOMA =
else
  DO_FOMA = libfoma
endif

if NO_LIBSYNTAXNET
  DO_SYNTAXNET =
else
  DO_SYNTAXNET = libsyntaxnet
endif

SUBDIRS = include libtreeler $(DO_FOMA) libfreeling main utilities $(DO_SYNTAXNET) $(DO_TESTS)

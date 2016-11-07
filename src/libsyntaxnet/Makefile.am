AUTOMAKE_OPTIONS = subdir-objects

include $(top_srcdir)/src/automake_options.am

AM_CPPFLAGS = -I$(top_srcdir)/src/include -I$(top_srcdir)/pybind11/include -I/usr/include/python3.5m -I/usr/include/python3.5m $(MY_CPPFLAGS)
AM_CXXFLAGS = -I$(top_srcdir)/src/include -I$(top_srcdir)/pybind11/include -I/usr/include/python3.5m -I/usr/include/python3.5m $(MY_CXXFLAGS)

lib_LTLIBRARIES = libsyntaxnet.la

librarydir=$(includedir)

libsyntaxnet_la_SOURCES = test.cc

libsyntaxnet_la_LIBADD = -lpython3.5m -lpthread -ldl  -lutil -lm  $(FREELING_DEPS)

libsyntaxnet_la_LDFLAGS = -release 0.1

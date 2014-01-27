from smoke.io.stream cimport generic as io_strm_gnrc

from smoke.model.dt.const import Flag
from smoke.replay.decoder.recv_prop cimport abstract


cdef class Decoder(abstract.AbstractDecoder):
    cdef int bits
    cdef long eat
    cdef long unsign

    cpdef int decode(Decoder self, io_strm_gnrc.Stream stream)
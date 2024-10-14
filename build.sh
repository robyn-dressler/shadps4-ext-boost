#!/bin/sh

bcp \
    boost/asio/asio.hpp \
    boost/container/flat_map.hpp \
    boost/container/flat_set.hpp \
    boost/container/small_vector.hpp \
    boost/container/static_vector.hpp \
    boost/icl/interval_map.hpp \
    boost/icl/split_interval_map.hpp \
    boost/icl/separate_interval_set.hpp \
    boost/intrusive/list.hpp \
    boost/intrusive/set.hpp \
    program_options \
    align \
    --boost="$1" .

find . -type f -print0 | xargs -0 dos2unix
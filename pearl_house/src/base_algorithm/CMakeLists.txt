aux_source_directory(. SRC_LIST)

add_library(base_algorithm ${SRC_LIST})

target_link_libraries(pthread)
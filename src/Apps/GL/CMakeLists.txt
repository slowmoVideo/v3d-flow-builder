include_directories(${V3D_INCLUDE_DIRS} ${EXTRA_INC_DIRS} ${PROJECT_SOURCE_DIR}/src/lib/libsvflow/src)
link_directories(${V3D_DIR} ${EXTRA_LIB_DIRS})
link_libraries (V3D ${EXTRA_LIBRARIES})

if(V3DLIB_ENABLE_GPGPU)
  add_v3d_executable(
    slowmoFlowBuilder
    flowBuilder.cpp
    ${PROJECT_SOURCE_DIR}/src/lib/libsvflow/src/flowField_sV.cpp
    ${PROJECT_SOURCE_DIR}/src/lib/libsvflow/src/flowRW_sV.cpp
  )
endif (V3DLIB_ENABLE_GPGPU)

install(TARGETS slowmoFlowBuilder DESTINATION ${DEST})

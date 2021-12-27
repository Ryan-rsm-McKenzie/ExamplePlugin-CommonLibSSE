set(ROOT_DIR "${CMAKE_CURRENT_LIST_DIR}/..")

find_package(
	Python3
	3.9
	MODULE
	REQUIRED
	COMPONENTS
		Interpreter
)

set(SCRIPT "${ROOT_DIR}/scripts/archive_artifacts.py")

source_group(
	TREE "${ROOT_DIR}"
	FILES "${SCRIPT}"
)

add_custom_target(
	"archive_artifacts"
	COMMAND
		"$<TARGET_FILE:Python3::Interpreter>"
		"${SCRIPT}"
		"--bin-dir=${CMAKE_CURRENT_BINARY_DIR}"
		"--plugin-files"
			"$<TARGET_FILE:${PROJECT_NAME}>"
		"--pdbs"
			"$<TARGET_PDB_FILE:${PROJECT_NAME}>"
		"--project=${PROJECT_NAME}"
	DEPENDS
		"${PROJECT_NAME}"
	BYPRODUCTS
		"${CMAKE_CURRENT_BINARY_DIR}/artifacts/${PROJECT_NAME}.zip"
		"${CMAKE_CURRENT_BINARY_DIR}/artifacts/${PROJECT_NAME}_pdbs.zip"
	VERBATIM
	SOURCES
		"${SCRIPT}"
)

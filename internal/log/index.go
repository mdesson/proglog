package log

import (
	"os"

	"github.com/tysontate/gommap"
)

var (
	offsetWidth uint64 = 4
	posWidth    uint64 = 8
	entWidth           = offsetWidth + posWidth
)

type index struct {
	file *os.File
	mmap gommap.MMap
	size int64
}

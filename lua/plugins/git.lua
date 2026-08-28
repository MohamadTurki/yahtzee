-- git.yazi — show the status of Git file changes as a linemode
-- in the file list. Fetchers are registered in yazi.toml.
require("git"):setup {
	-- Position of the git signs relative to other linemodes
	order = 1500,
}

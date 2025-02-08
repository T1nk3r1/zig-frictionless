comptime {
    blk: {
        blk: while (false) {}
    }
}
comptime {
    blk: while (false) {
        blk: for (@as([0]void, undefined)) |_| {}
    }
}
comptime {
    blk: for (@as([0]void, undefined)) |_| {
        blk: {}
    }
}

// error
// target=native
//
// :3:9: error: redefinition of label 'blk'
// :2:5: note: previous definition here
// :8:9: error: redefinition of label 'blk'
// :7:5: note: previous definition here
// :13:9: error: redefinition of label 'blk'
// :12:5: note: previous definition here

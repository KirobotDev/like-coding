const std = @import("std");

pub fn main(init: std.process.Init) !void {
    try std.Io.File.stdout().writeStreamingAll(init.io, "Hello, World!\n");

    const a = 1;
    const b = 0;
    if (a != b) {
        try std.Io.File.stdout().writeStreamingAll(init.io, "Bienjouer\n");
    } else {
        try std.Io.File.stdout().writeStreamingAll(init.io, "Merguez\n");
    }
}
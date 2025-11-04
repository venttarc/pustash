const std = @import("std");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();

    const mem = try allocator.alloc(u8, 1024 * 1024 * 1024);

    std.debug.print("Allocated 1GB. Press Ctrl+C to exit.\n", .{});

    while (true) {
        std.Thread.sleep(std.time.ns_per_s);
    }

    _ = mem;
}

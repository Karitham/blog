const std = @import("std");
const zine = @import("zine");

pub fn build(b: *std.Build) !void {
    zine.website(b, .{
        .title = "Kar's thoughts",
        .host_url = "https://karitham.dev",
        .layouts_dir_path = "layouts",
        .content_dir_path = "content",
        .assets_dir_path = "assets",
        .static_assets = &.{
            "android-chrome-192x192.png",
            "android-chrome-512x512.png",
            "apple-touch-icon.png",
            "favicon-16x16.png",
            "favicon-32x32.png",
            "favicon.ico",
            "site.webmanifest",
        },
    });
}

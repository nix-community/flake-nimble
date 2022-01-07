{
  description = ''
    Wrapper around the Linux framebuffer driver ioctl API
  '';
  inputs.src-linuxfb.url = "https://github.com/luked99/linuxfb.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

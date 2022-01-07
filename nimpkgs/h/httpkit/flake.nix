{
  description = ''
    An efficient HTTP tool suite written in pure nim. Help you to write HTTP services or clients via TCP, UDP, or even Unix Domain socket, etc.
  '';
  inputs.src-httpkit.url = "https://github.com/tulayang/httpkit";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

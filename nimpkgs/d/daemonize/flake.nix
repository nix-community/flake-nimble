{
  description = ''
    This library makes your code run as a daemon process on Unix-like systems
  '';
  inputs.src-daemonize.url = "https://github.com/OpenSystemsLab/daemonize.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

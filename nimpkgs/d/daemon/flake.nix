{
  description = ''
    Cross-platform process daemonization library
  '';
  inputs.src-daemon.url = "https://github.com/status-im/nim-daemon";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

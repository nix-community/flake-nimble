{
  description = ''
    Nim wrapper for libbacktrace
  '';
  inputs.src-libbacktrace.url = "https://github.com/status-im/nim-libbacktrace";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

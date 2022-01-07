{
  description = ''
    ptrace wrapper for Nim
  '';
  inputs.src-ptrace.url = "https://github.com/ba0f3/ptrace.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

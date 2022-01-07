{
  description = ''
    OS Utils for Nim, simple tiny but useful procs for OS. Turn Display OFF and set Process Name.
  '';
  inputs.src-osutil.url = "https://github.com/juancarlospaco/nim-osutil";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

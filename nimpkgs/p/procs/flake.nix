{
  description = ''
    Unix process&system query&formatting library&multi-command CLI in Nim
  '';
  inputs.src-procs.url = "https://github.com/c-blake/procs";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

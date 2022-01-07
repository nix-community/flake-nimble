{
  description = ''
    Nancy - Nim fancy ANSI tables
  '';
  inputs.src-nancy.url = "https://github.com/PMunch/nancy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

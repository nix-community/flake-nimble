{
  description = ''
    Library for reading GEMF map tile stores
  '';
  inputs.src-gemf.url = "https://bitbucket.org/abudden/gemf.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

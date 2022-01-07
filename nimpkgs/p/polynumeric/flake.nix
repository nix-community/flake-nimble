{
  description = ''
    Polynomial operations
  '';
  inputs.src-polynumeric.url = "https://github.com/SciNim/polynumeric";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

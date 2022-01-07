{
  description = ''
    LAPACK bindings
  '';
  inputs.src-nimlapack.url = "https://github.com/andreaferretti/nimlapack";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

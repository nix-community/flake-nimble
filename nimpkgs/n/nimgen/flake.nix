{
  description = ''
    C2nim helper to simplify and automate wrapping C libraries
  '';
  inputs.src-nimgen.url = "https://github.com/genotrance/nimgen";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

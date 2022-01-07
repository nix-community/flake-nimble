{
  description = ''
    Helper to run nim code like a script
  '';
  inputs.src-nimr.url = "https://github.com/Jeff-Ciesielski/nimr";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

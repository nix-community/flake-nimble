{
  description = ''
    Disk-based sequences
  '';
  inputs.src-spills.url = "https://github.com/andreaferretti/spills";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

{
  description = ''
    GFF <-> NWNT Converter (NeverWinter Nights Text)
  '';
  inputs.src-nwnt.url = "https://github.com/WilliamDraco/NWNT";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

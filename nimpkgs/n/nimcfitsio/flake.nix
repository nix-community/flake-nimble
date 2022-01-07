{
  description = ''
    Bindings for CFITSIO, a library to read/write FITSIO images and tables.
  '';
  inputs.src-nimcfitsio.url = "https://github.com/ziotom78/nimcfitsio.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

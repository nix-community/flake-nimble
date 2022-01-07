{
  description = ''
    Bindings for the HDF5 data format C library
  '';
  inputs.src-nimhdf5.url = "https://github.com/Vindaar/nimhdf5";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

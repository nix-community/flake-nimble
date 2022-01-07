{
  description = ''
    Package for packing and unpacking byte data
  '';
  inputs.src-binio.url = "https://github.com/Riderfighter/binio";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

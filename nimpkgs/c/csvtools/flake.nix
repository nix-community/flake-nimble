{
  description = ''
    Manage CSV files
  '';
  inputs.src-csvtools.url = "https://github.com/andreaferretti/csvtools";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

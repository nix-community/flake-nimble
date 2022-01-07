{
  description = ''
    A dataframe library with a dplyr like API
  '';
  inputs.src-datamancer.url = "https://github.com/SciNim/datamancer";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

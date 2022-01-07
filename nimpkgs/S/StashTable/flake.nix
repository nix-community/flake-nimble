{
  description = ''
    Concurrent hash table
  '';
  inputs.src-StashTable.url = "https://github.com/olliNiinivaara/StashTable";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

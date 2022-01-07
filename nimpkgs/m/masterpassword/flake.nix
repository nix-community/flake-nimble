{
  description = ''
    Master Password algorith implementation
  '';
  inputs.src-masterpassword.url = "https://github.com/SolitudeSF/masterpassword";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

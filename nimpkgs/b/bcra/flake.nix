{
  description = ''
    Central Bank of Argentina Gov API Client with debtor corporations info
  '';
  inputs.src-bcra.url = "https://github.com/juancarlospaco/nim-bcra";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

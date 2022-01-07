{
  description = ''
    Cross-platform access to OS keychain
  '';
  inputs.src-keyring.url = "https://github.com/iffy/nim-keyring";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

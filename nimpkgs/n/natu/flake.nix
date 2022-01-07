{
  description = ''
    Game Boy Advance development library
  '';
  inputs.src-natu.url = "https://github.com/exelotl/natu";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

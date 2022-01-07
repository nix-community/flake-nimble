{
  description = ''
    The International Standard for country codes and codes for their subdivisions on Nim (ISO-3166)
  '';
  inputs.src-iridium.url = "https://github.com/KingDarBoja/Iridium";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

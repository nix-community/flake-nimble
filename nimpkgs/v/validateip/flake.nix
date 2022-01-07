{
  description = ''
    Checks if a provided string is actually a correct IP address. Supports detection of Class A to D of IPv4 addresses.
  '';
  inputs.src-validateip.url = "https://github.com/theAkito/nim-validateip";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

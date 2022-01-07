{
  description = ''
    Retrieve info about a location from an IP address
  '';
  inputs.src-freegeoip.url = "https://github.com/achesak/nim-freegeoip";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

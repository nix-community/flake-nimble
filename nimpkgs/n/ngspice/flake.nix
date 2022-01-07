{
  description = ''
    Analog electronic circuit simiulator library
  '';
  inputs.src-ngspice.url = "https://github.com/haxscramper/ngspice";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

{
  description = ''
    Wrapper that implements some of wiringPi's function for controlling a Raspberry Pi
  '';
  inputs.src-wiringPiNim.url = "https://github.com/ThomasTJdev/nim_wiringPiNim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

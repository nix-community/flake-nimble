{
  description = ''
    A Nim scheduler library that lets you kick off jobs at regular intervals.
  '';
  inputs.src-schedules.url = "https://github.com/soasme/nim-schedules";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

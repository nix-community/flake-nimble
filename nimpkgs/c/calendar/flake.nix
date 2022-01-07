{
  description = ''
    A tiny calendar program
  '';
  inputs.src-calendar.url = "https://github.com/adam-mcdaniel/calendar";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

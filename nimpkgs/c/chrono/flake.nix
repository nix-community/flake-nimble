{
  description = ''
    Calendars, Timestamps and Timezones utilities.
  '';
  inputs.src-chrono.url = "https://github.com/treeform/chrono";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

{
  description = ''
    Too awesome procs to be included in nimrod.os module
  '';
  inputs.src-genieos.url = "https://github.com/Araq/genieos/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

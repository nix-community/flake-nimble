{
  description = ''
    Command to add counter suffix/prefix to a list of files.
  '';
  inputs.src-number_files.url = "https://github.com/Araq/number_files/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

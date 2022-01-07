{
  description = ''
    Command to remove acceptably empty directories.
  '';
  inputs.src-awesome_rmdir.url = "https://github.com/Araq/awesome_rmdir/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

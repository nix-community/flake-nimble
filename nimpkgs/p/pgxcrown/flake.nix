{
  description = ''
    Build Postgres extensions in Nim.
  '';
  inputs.src-pgxcrown.url = "https://github.com/luisacosta828/pgxcrown";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

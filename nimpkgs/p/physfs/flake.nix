{
  description = ''
    A library to provide abstract access to various archives.
  '';
  inputs.src-physfs.url = "https://github.com/fowlmouth/physfs";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

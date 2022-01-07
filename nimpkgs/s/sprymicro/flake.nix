{
  description = ''
    Small demo Spry interpreters
  '';
  inputs.src-sprymicro.url = "https://github.com/gokr/sprymicro";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

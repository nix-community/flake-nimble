{
  description = ''
    A fork of John Novak (john@johnnovak.net)'s illwill package that is less safe numbers wise
  '';
  inputs.src-illwill_unsafe.url = "https://github.com/matthewjcavalier/illwill_unsafe";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

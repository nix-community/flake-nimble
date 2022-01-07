{
  description = ''
    dbus bindings for Nim
  '';
  inputs.src-dbus.url = "https://github.com/zielmicha/nim-dbus";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

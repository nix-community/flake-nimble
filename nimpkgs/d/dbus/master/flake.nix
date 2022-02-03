{
  description = ''dbus bindings for Nim'';
  inputs.src-dbus-master.flake = false;
  inputs.src-dbus-master.type = "github";
  inputs.src-dbus-master.owner = "zielmicha";
  inputs.src-dbus-master.repo = "nim-dbus";
  inputs.src-dbus-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-dbus-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dbus-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dbus-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
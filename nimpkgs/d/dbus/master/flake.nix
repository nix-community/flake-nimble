{
  description = ''dbus bindings for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-dbus-master.flake = false;
  inputs.src-dbus-master.type = "github";
  inputs.src-dbus-master.owner = "zielmicha";
  inputs.src-dbus-master.repo = "nim-dbus";
  inputs.src-dbus-master.ref = "refs/heads/master";
  inputs.src-dbus-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-dbus-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dbus-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dbus-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
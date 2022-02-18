{
  description = ''Nim bindings for Clutter toolkit.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimclutter-master.flake = false;
  inputs.src-nimclutter-master.type = "github";
  inputs.src-nimclutter-master.owner = "KeepCoolWithCoolidge";
  inputs.src-nimclutter-master.repo = "nimclutter";
  inputs.src-nimclutter-master.ref = "refs/heads/master";
  
  
  inputs."oldgtk3".type = "github";
  inputs."oldgtk3".owner = "riinr";
  inputs."oldgtk3".repo = "flake-nimble";
  inputs."oldgtk3".ref = "flake-pinning";
  inputs."oldgtk3".dir = "nimpkgs/o/oldgtk3";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimclutter-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimclutter-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimclutter-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
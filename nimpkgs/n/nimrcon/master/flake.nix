{
  description = ''Simple RCON client in Nim lang.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimrcon-master.flake = false;
  inputs.src-nimrcon-master.type = "github";
  inputs.src-nimrcon-master.owner = "mcilya";
  inputs.src-nimrcon-master.repo = "nimrcon";
  inputs.src-nimrcon-master.ref = "refs/heads/master";
  
  
  inputs."struct".type = "github";
  inputs."struct".owner = "riinr";
  inputs."struct".repo = "flake-nimble";
  inputs."struct".ref = "flake-pinning";
  inputs."struct".dir = "nimpkgs/s/struct";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimrcon-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimrcon-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimrcon-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
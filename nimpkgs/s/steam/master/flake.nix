{
  description = ''Steam API Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-steam-master.flake = false;
  inputs.src-steam-master.type = "github";
  inputs.src-steam-master.owner = "juancarlospaco";
  inputs.src-steam-master.repo = "nim-steam";
  inputs.src-steam-master.ref = "refs/heads/master";
  inputs.src-steam-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-steam-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-steam-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-steam-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
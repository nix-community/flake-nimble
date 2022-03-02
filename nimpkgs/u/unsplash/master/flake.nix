{
  description = ''Unsplash API Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-unsplash-master.flake = false;
  inputs.src-unsplash-master.type = "github";
  inputs.src-unsplash-master.owner = "juancarlospaco";
  inputs.src-unsplash-master.repo = "nim-unsplash";
  inputs.src-unsplash-master.ref = "refs/heads/master";
  inputs.src-unsplash-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-unsplash-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unsplash-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-unsplash-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
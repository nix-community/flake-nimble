{
  description = ''Immature Newsgroup NNTP server using SQLite as backend'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimnews-v0_0_0.flake = false;
  inputs.src-nimnews-v0_0_0.type = "github";
  inputs.src-nimnews-v0_0_0.owner = "mildred";
  inputs.src-nimnews-v0_0_0.repo = "nimnews";
  inputs.src-nimnews-v0_0_0.ref = "refs/tags/v0.0.0";
  inputs.src-nimnews-v0_0_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimnews-v0_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimnews-v0_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimnews-v0_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
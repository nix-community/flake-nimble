{
  description = ''A static site generator written in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimatic-master.flake = false;
  inputs.src-nimatic-master.type = "github";
  inputs.src-nimatic-master.owner = "DangerOnTheRanger";
  inputs.src-nimatic-master.repo = "nimatic";
  inputs.src-nimatic-master.ref = "refs/heads/master";
  inputs.src-nimatic-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."markdown".type = "github";
  inputs."markdown".owner = "riinr";
  inputs."markdown".repo = "flake-nimble";
  inputs."markdown".ref = "flake-pinning";
  inputs."markdown".dir = "nimpkgs/m/markdown";
  inputs."markdown".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimatic-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimatic-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimatic-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
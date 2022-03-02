{
  description = ''A postgres DB adapter for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-pdba-master.flake = false;
  inputs.src-pdba-master.type = "github";
  inputs.src-pdba-master.owner = "misebox";
  inputs.src-pdba-master.repo = "pdba";
  inputs.src-pdba-master.ref = "refs/heads/master";
  inputs.src-pdba-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."yaml".type = "github";
  # inputs."yaml".owner = "riinr";
  # inputs."yaml".repo = "flake-nimble";
  # inputs."yaml".ref = "flake-pinning";
  # inputs."yaml".dir = "nimpkgs/y/yaml";
  # inputs."yaml".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."yaml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."ndb".type = "github";
  # inputs."ndb".owner = "riinr";
  # inputs."ndb".repo = "flake-nimble";
  # inputs."ndb".ref = "flake-pinning";
  # inputs."ndb".dir = "nimpkgs/n/ndb";
  # inputs."ndb".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."ndb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-pdba-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pdba-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pdba-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
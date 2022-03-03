{
  description = ''A consistent markup language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-xidoc-master.flake = false;
  inputs.src-xidoc-master.type = "github";
  inputs.src-xidoc-master.owner = "xigoi";
  inputs.src-xidoc-master.repo = "xidoc";
  inputs.src-xidoc-master.ref = "refs/heads/master";
  inputs.src-xidoc-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."npeg".type = "github";
  # inputs."npeg".owner = "riinr";
  # inputs."npeg".repo = "flake-nimble";
  # inputs."npeg".ref = "flake-pinning";
  # inputs."npeg".dir = "nimpkgs/n/npeg";
  # inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-xidoc-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xidoc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xidoc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
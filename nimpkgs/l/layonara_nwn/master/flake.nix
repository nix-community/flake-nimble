{
  description = ''Various Layonara related functions for NWN Development'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-layonara_nwn-master.flake = false;
  inputs.src-layonara_nwn-master.type = "github";
  inputs.src-layonara_nwn-master.owner = "plenarius";
  inputs.src-layonara_nwn-master.repo = "layonara_nwn";
  inputs.src-layonara_nwn-master.ref = "refs/heads/master";
  inputs.src-layonara_nwn-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."neverwinter".type = "github";
  # inputs."neverwinter".owner = "riinr";
  # inputs."neverwinter".repo = "flake-nimble";
  # inputs."neverwinter".ref = "flake-pinning";
  # inputs."neverwinter".dir = "nimpkgs/n/neverwinter";
  # inputs."neverwinter".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."neverwinter".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."glob".type = "github";
  # inputs."glob".owner = "riinr";
  # inputs."glob".repo = "flake-nimble";
  # inputs."glob".ref = "flake-pinning";
  # inputs."glob".dir = "nimpkgs/g/glob";
  # inputs."glob".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."glob".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."docopt".type = "github";
  # inputs."docopt".owner = "riinr";
  # inputs."docopt".repo = "flake-nimble";
  # inputs."docopt".ref = "flake-pinning";
  # inputs."docopt".dir = "nimpkgs/d/docopt";
  # inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-layonara_nwn-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-layonara_nwn-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-layonara_nwn-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
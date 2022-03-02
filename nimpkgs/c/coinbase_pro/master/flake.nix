{
  description = ''Coinbase pro client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-coinbase_pro-master.flake = false;
  inputs.src-coinbase_pro-master.type = "github";
  inputs.src-coinbase_pro-master.owner = "inv2004";
  inputs.src-coinbase_pro-master.repo = "coinbase-pro-nim";
  inputs.src-coinbase_pro-master.ref = "refs/heads/master";
  inputs.src-coinbase_pro-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."ws".type = "github";
  # inputs."ws".owner = "riinr";
  # inputs."ws".repo = "flake-nimble";
  # inputs."ws".ref = "flake-pinning";
  # inputs."ws".dir = "nimpkgs/w/ws";
  # inputs."ws".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."ws".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."decimal".type = "github";
  # inputs."decimal".owner = "riinr";
  # inputs."decimal".repo = "flake-nimble";
  # inputs."decimal".ref = "flake-pinning";
  # inputs."decimal".dir = "nimpkgs/d/decimal";
  # inputs."decimal".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."decimal".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."uuids".type = "github";
  # inputs."uuids".owner = "riinr";
  # inputs."uuids".repo = "flake-nimble";
  # inputs."uuids".ref = "flake-pinning";
  # inputs."uuids".dir = "nimpkgs/u/uuids";
  # inputs."uuids".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."uuids".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-coinbase_pro-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-coinbase_pro-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-coinbase_pro-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''mctranslog - Transaction Log Package'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mctranslog-master".type = "github";
  inputs."mctranslog-master".owner = "riinr";
  inputs."mctranslog-master".repo = "flake-nimble";
  inputs."mctranslog-master".ref = "flake-pinning";
  inputs."mctranslog-master".dir = "nimpkgs/m/mctranslog/master";
  inputs."mctranslog-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mctranslog-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mctranslog-v0_1_4".type = "github";
  inputs."mctranslog-v0_1_4".owner = "riinr";
  inputs."mctranslog-v0_1_4".repo = "flake-nimble";
  inputs."mctranslog-v0_1_4".ref = "flake-pinning";
  inputs."mctranslog-v0_1_4".dir = "nimpkgs/m/mctranslog/v0_1_4";
  inputs."mctranslog-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mctranslog-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
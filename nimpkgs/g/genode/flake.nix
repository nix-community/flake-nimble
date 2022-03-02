{
  description = ''System libraries for the Genode Operating System Framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."genode-master".type = "github";
  inputs."genode-master".owner = "riinr";
  inputs."genode-master".repo = "flake-nimble";
  inputs."genode-master".ref = "flake-pinning";
  inputs."genode-master".dir = "nimpkgs/g/genode/master";
  inputs."genode-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."genode-v18_07".type = "github";
  inputs."genode-v18_07".owner = "riinr";
  inputs."genode-v18_07".repo = "flake-nimble";
  inputs."genode-v18_07".ref = "flake-pinning";
  inputs."genode-v18_07".dir = "nimpkgs/g/genode/v18_07";
  inputs."genode-v18_07".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v18_07".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."genode-v18_08".type = "github";
  inputs."genode-v18_08".owner = "riinr";
  inputs."genode-v18_08".repo = "flake-nimble";
  inputs."genode-v18_08".ref = "flake-pinning";
  inputs."genode-v18_08".dir = "nimpkgs/g/genode/v18_08";
  inputs."genode-v18_08".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v18_08".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."genode-v18_08_0".type = "github";
  inputs."genode-v18_08_0".owner = "riinr";
  inputs."genode-v18_08_0".repo = "flake-nimble";
  inputs."genode-v18_08_0".ref = "flake-pinning";
  inputs."genode-v18_08_0".dir = "nimpkgs/g/genode/v18_08_0";
  inputs."genode-v18_08_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v18_08_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."genode-v18_11".type = "github";
  inputs."genode-v18_11".owner = "riinr";
  inputs."genode-v18_11".repo = "flake-nimble";
  inputs."genode-v18_11".ref = "flake-pinning";
  inputs."genode-v18_11".dir = "nimpkgs/g/genode/v18_11";
  inputs."genode-v18_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v18_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."genode-v18_11_0".type = "github";
  inputs."genode-v18_11_0".owner = "riinr";
  inputs."genode-v18_11_0".repo = "flake-nimble";
  inputs."genode-v18_11_0".ref = "flake-pinning";
  inputs."genode-v18_11_0".dir = "nimpkgs/g/genode/v18_11_0";
  inputs."genode-v18_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v18_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."genode-v18_11_1".type = "github";
  inputs."genode-v18_11_1".owner = "riinr";
  inputs."genode-v18_11_1".repo = "flake-nimble";
  inputs."genode-v18_11_1".ref = "flake-pinning";
  inputs."genode-v18_11_1".dir = "nimpkgs/g/genode/v18_11_1";
  inputs."genode-v18_11_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v18_11_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."genode-v19_02".type = "github";
  inputs."genode-v19_02".owner = "riinr";
  inputs."genode-v19_02".repo = "flake-nimble";
  inputs."genode-v19_02".ref = "flake-pinning";
  inputs."genode-v19_02".dir = "nimpkgs/g/genode/v19_02";
  inputs."genode-v19_02".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v19_02".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."genode-v19_05".type = "github";
  inputs."genode-v19_05".owner = "riinr";
  inputs."genode-v19_05".repo = "flake-nimble";
  inputs."genode-v19_05".ref = "flake-pinning";
  inputs."genode-v19_05".dir = "nimpkgs/g/genode/v19_05";
  inputs."genode-v19_05".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v19_05".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."genode-v20_11".type = "github";
  inputs."genode-v20_11".owner = "riinr";
  inputs."genode-v20_11".repo = "flake-nimble";
  inputs."genode-v20_11".ref = "flake-pinning";
  inputs."genode-v20_11".dir = "nimpkgs/g/genode/v20_11";
  inputs."genode-v20_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v20_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."genode-v20_11_1".type = "github";
  inputs."genode-v20_11_1".owner = "riinr";
  inputs."genode-v20_11_1".repo = "flake-nimble";
  inputs."genode-v20_11_1".ref = "flake-pinning";
  inputs."genode-v20_11_1".dir = "nimpkgs/g/genode/v20_11_1";
  inputs."genode-v20_11_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v20_11_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
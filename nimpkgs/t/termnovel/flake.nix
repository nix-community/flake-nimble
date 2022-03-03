{
  description = ''A command that to read novel on terminal'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."termnovel-master".type = "github";
  inputs."termnovel-master".owner = "riinr";
  inputs."termnovel-master".repo = "flake-nimble";
  inputs."termnovel-master".ref = "flake-pinning";
  inputs."termnovel-master".dir = "nimpkgs/t/termnovel/master";
  inputs."termnovel-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."termnovel-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."termnovel-1_0_0".type = "github";
  inputs."termnovel-1_0_0".owner = "riinr";
  inputs."termnovel-1_0_0".repo = "flake-nimble";
  inputs."termnovel-1_0_0".ref = "flake-pinning";
  inputs."termnovel-1_0_0".dir = "nimpkgs/t/termnovel/1_0_0";
  inputs."termnovel-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."termnovel-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
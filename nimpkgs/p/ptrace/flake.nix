{
  description = ''ptrace wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ptrace-master".type = "github";
  inputs."ptrace-master".owner = "riinr";
  inputs."ptrace-master".repo = "flake-nimble";
  inputs."ptrace-master".ref = "flake-pinning";
  inputs."ptrace-master".dir = "nimpkgs/p/ptrace/master";
  inputs."ptrace-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptrace-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ptrace-0_0_2".type = "github";
  inputs."ptrace-0_0_2".owner = "riinr";
  inputs."ptrace-0_0_2".repo = "flake-nimble";
  inputs."ptrace-0_0_2".ref = "flake-pinning";
  inputs."ptrace-0_0_2".dir = "nimpkgs/p/ptrace/0_0_2";
  inputs."ptrace-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptrace-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ptrace-0_0_3".type = "github";
  inputs."ptrace-0_0_3".owner = "riinr";
  inputs."ptrace-0_0_3".repo = "flake-nimble";
  inputs."ptrace-0_0_3".ref = "flake-pinning";
  inputs."ptrace-0_0_3".dir = "nimpkgs/p/ptrace/0_0_3";
  inputs."ptrace-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptrace-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ptrace-0_0_4".type = "github";
  inputs."ptrace-0_0_4".owner = "riinr";
  inputs."ptrace-0_0_4".repo = "flake-nimble";
  inputs."ptrace-0_0_4".ref = "flake-pinning";
  inputs."ptrace-0_0_4".dir = "nimpkgs/p/ptrace/0_0_4";
  inputs."ptrace-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptrace-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
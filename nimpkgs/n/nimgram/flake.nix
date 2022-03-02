{
  description = ''MTProto client written in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimgram-master".type = "github";
  inputs."nimgram-master".owner = "riinr";
  inputs."nimgram-master".repo = "flake-nimble";
  inputs."nimgram-master".ref = "flake-pinning";
  inputs."nimgram-master".dir = "nimpkgs/n/nimgram/master";
  inputs."nimgram-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgram-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgram-v0_1_0".type = "github";
  inputs."nimgram-v0_1_0".owner = "riinr";
  inputs."nimgram-v0_1_0".repo = "flake-nimble";
  inputs."nimgram-v0_1_0".ref = "flake-pinning";
  inputs."nimgram-v0_1_0".dir = "nimpkgs/n/nimgram/v0_1_0";
  inputs."nimgram-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgram-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
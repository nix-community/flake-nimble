{
  description = ''Nim bindings for mozilla's DeepSpeech model.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."deepspeech-master".type = "github";
  inputs."deepspeech-master".owner = "riinr";
  inputs."deepspeech-master".repo = "flake-nimble";
  inputs."deepspeech-master".ref = "flake-pinning";
  inputs."deepspeech-master".dir = "nimpkgs/d/deepspeech/master";
  inputs."deepspeech-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deepspeech-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."deepspeech-v0_7_0".type = "github";
  inputs."deepspeech-v0_7_0".owner = "riinr";
  inputs."deepspeech-v0_7_0".repo = "flake-nimble";
  inputs."deepspeech-v0_7_0".ref = "flake-pinning";
  inputs."deepspeech-v0_7_0".dir = "nimpkgs/d/deepspeech/v0_7_0";
  inputs."deepspeech-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deepspeech-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."deepspeech-v0_7_1".type = "github";
  inputs."deepspeech-v0_7_1".owner = "riinr";
  inputs."deepspeech-v0_7_1".repo = "flake-nimble";
  inputs."deepspeech-v0_7_1".ref = "flake-pinning";
  inputs."deepspeech-v0_7_1".dir = "nimpkgs/d/deepspeech/v0_7_1";
  inputs."deepspeech-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deepspeech-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
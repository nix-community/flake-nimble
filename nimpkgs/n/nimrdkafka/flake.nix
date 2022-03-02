{
  description = ''Nim wrapper for librdkafka'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimrdkafka-master".type = "github";
  inputs."nimrdkafka-master".owner = "riinr";
  inputs."nimrdkafka-master".repo = "flake-nimble";
  inputs."nimrdkafka-master".ref = "flake-pinning";
  inputs."nimrdkafka-master".dir = "nimpkgs/n/nimrdkafka/master";
  inputs."nimrdkafka-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrdkafka-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''RESP(REdis Serialization Protocol) Serialization for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."redisparser-master".type = "github";
  inputs."redisparser-master".owner = "riinr";
  inputs."redisparser-master".repo = "flake-nimble";
  inputs."redisparser-master".ref = "flake-pinning";
  inputs."redisparser-master".dir = "nimpkgs/r/redisparser/master";

    inputs."redisparser-0_1_1".type = "github";
  inputs."redisparser-0_1_1".owner = "riinr";
  inputs."redisparser-0_1_1".repo = "flake-nimble";
  inputs."redisparser-0_1_1".ref = "flake-pinning";
  inputs."redisparser-0_1_1".dir = "nimpkgs/r/redisparser/0_1_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
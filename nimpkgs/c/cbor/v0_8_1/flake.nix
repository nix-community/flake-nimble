{
  description = ''Concise Binary Object Representation decoder (RFC7049).'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-cbor-v0_8_1.flake = false;
  inputs.src-cbor-v0_8_1.type = "other";
  inputs.src-cbor-v0_8_1.owner = "~ehmry";
  inputs.src-cbor-v0_8_1.repo = "nim_cbor";
  inputs.src-cbor-v0_8_1.ref = "refs/tags/v0.8.1";
  inputs.src-cbor-v0_8_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."bigints".type = "github";
  # inputs."bigints".owner = "riinr";
  # inputs."bigints".repo = "flake-nimble";
  # inputs."bigints".ref = "flake-pinning";
  # inputs."bigints".dir = "nimpkgs/b/bigints";
  # inputs."bigints".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."bigints".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-cbor-v0_8_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cbor-v0_8_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cbor-v0_8_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
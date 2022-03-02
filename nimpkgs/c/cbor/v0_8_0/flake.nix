{
  description = ''Concise Binary Object Representation decoder (RFC7049).'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-cbor-v0_8_0.flake = false;
  inputs.src-cbor-v0_8_0.type = "other";
  inputs.src-cbor-v0_8_0.owner = "~ehmry";
  inputs.src-cbor-v0_8_0.repo = "nim_cbor";
  inputs.src-cbor-v0_8_0.ref = "refs/tags/v0.8.0";
  inputs.src-cbor-v0_8_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."bignum".type = "github";
  # inputs."bignum".owner = "riinr";
  # inputs."bignum".repo = "flake-nimble";
  # inputs."bignum".ref = "flake-pinning";
  # inputs."bignum".dir = "nimpkgs/b/bignum";
  # inputs."bignum".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."bignum".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-cbor-v0_8_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cbor-v0_8_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cbor-v0_8_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
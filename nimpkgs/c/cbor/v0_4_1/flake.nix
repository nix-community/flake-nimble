{
  description = ''Concise Binary Object Representation decoder (RFC7049).'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-cbor-v0_4_1.flake = false;
  inputs.src-cbor-v0_4_1.type = "other";
  inputs.src-cbor-v0_4_1.owner = "~ehmry";
  inputs.src-cbor-v0_4_1.repo = "nim_cbor";
  inputs.src-cbor-v0_4_1.ref = "refs/tags/v0.4.1";
  inputs.src-cbor-v0_4_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cbor-v0_4_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cbor-v0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cbor-v0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
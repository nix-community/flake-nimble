{
  description = ''Concise Binary Object Representation decoder (RFC7049).'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cbor-v0_7_0.flake = false;
  inputs.src-cbor-v0_7_0.type = "other";
  inputs.src-cbor-v0_7_0.owner = "~ehmry";
  inputs.src-cbor-v0_7_0.repo = "nim_cbor";
  inputs.src-cbor-v0_7_0.ref = "refs/tags/v0.7.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cbor-v0_7_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cbor-v0_7_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cbor-v0_7_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
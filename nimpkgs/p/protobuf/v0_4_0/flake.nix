{
  description = ''Protobuf implementation in pure Nim that leverages the power of the macro system to not depend on any external tools'';
  inputs.src-protobuf-v0_4_0.flake = false;
  inputs.src-protobuf-v0_4_0.type = "github";
  inputs.src-protobuf-v0_4_0.owner = "PMunch";
  inputs.src-protobuf-v0_4_0.repo = "protobuf-nim";
  inputs.src-protobuf-v0_4_0.ref = "refs/tags/v0.4.0";
  
  
  inputs."combparser".url = "path:../../../c/combparser";
  inputs."combparser".type = "github";
  inputs."combparser".owner = "riinr";
  inputs."combparser".repo = "flake-nimble";
  inputs."combparser".ref = "flake-pinning";
  inputs."combparser".dir = "nimpkgs/c/combparser";

  outputs = { self, nixpkgs, src-protobuf-v0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-protobuf-v0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-protobuf-v0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
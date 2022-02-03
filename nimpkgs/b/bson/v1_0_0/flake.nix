{
  description = ''BSON Binary JSON Serialization'';
  inputs.src-bson-v1_0_0.flake = false;
  inputs.src-bson-v1_0_0.type = "github";
  inputs.src-bson-v1_0_0.owner = "JohnAD";
  inputs.src-bson-v1_0_0.repo = "bson";
  inputs.src-bson-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-bson-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bson-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bson-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
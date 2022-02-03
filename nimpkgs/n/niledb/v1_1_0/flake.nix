{
  description = ''Key/Value storage into a fast file-hash'';
  inputs.src-niledb-v1_1_0.flake = false;
  inputs.src-niledb-v1_1_0.type = "github";
  inputs.src-niledb-v1_1_0.owner = "JeffersonLab";
  inputs.src-niledb-v1_1_0.repo = "niledb";
  inputs.src-niledb-v1_1_0.ref = "refs/tags/v1.1.0";
  
  
  inputs."serializetools".url = "path:../../../s/serializetools";
  inputs."serializetools".type = "github";
  inputs."serializetools".owner = "riinr";
  inputs."serializetools".repo = "flake-nimble";
  inputs."serializetools".ref = "flake-pinning";
  inputs."serializetools".dir = "nimpkgs/s/serializetools";

  outputs = { self, nixpkgs, src-niledb-v1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niledb-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-niledb-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
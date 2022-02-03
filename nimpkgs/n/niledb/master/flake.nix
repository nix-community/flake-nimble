{
  description = ''Key/Value storage into a fast file-hash'';
  inputs.src-niledb-master.flake = false;
  inputs.src-niledb-master.type = "github";
  inputs.src-niledb-master.owner = "JeffersonLab";
  inputs.src-niledb-master.repo = "niledb";
  inputs.src-niledb-master.ref = "refs/heads/master";
  
  
  inputs."serializetools".url = "path:../../../s/serializetools";
  inputs."serializetools".type = "github";
  inputs."serializetools".owner = "riinr";
  inputs."serializetools".repo = "flake-nimble";
  inputs."serializetools".ref = "flake-pinning";
  inputs."serializetools".dir = "nimpkgs/s/serializetools";

  outputs = { self, nixpkgs, src-niledb-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niledb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-niledb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
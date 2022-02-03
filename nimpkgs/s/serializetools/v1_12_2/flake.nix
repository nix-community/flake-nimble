{
  description = ''Support for serialization of objects'';
  inputs.src-serializetools-v1_12_2.flake = false;
  inputs.src-serializetools-v1_12_2.type = "github";
  inputs.src-serializetools-v1_12_2.owner = "JeffersonLab";
  inputs.src-serializetools-v1_12_2.repo = "serializetools";
  inputs.src-serializetools-v1_12_2.ref = "refs/tags/v1.12.2";
  
  outputs = { self, nixpkgs, src-serializetools-v1_12_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-serializetools-v1_12_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-serializetools-v1_12_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Support for serialization of objects'';
  inputs.src-serializetools-v1_11.flake = false;
  inputs.src-serializetools-v1_11.type = "github";
  inputs.src-serializetools-v1_11.owner = "JeffersonLab";
  inputs.src-serializetools-v1_11.repo = "serializetools";
  inputs.src-serializetools-v1_11.ref = "refs/tags/v1.11";
  
  outputs = { self, nixpkgs, src-serializetools-v1_11, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-serializetools-v1_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-serializetools-v1_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
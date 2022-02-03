{
  description = ''Support for serialization of objects'';
  inputs.src-serializetools-v1_16_1.flake = false;
  inputs.src-serializetools-v1_16_1.type = "github";
  inputs.src-serializetools-v1_16_1.owner = "JeffersonLab";
  inputs.src-serializetools-v1_16_1.repo = "serializetools";
  inputs.src-serializetools-v1_16_1.ref = "refs/tags/v1.16.1";
  
  outputs = { self, nixpkgs, src-serializetools-v1_16_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-serializetools-v1_16_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-serializetools-v1_16_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
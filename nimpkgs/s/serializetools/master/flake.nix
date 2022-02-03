{
  description = ''Support for serialization of objects'';
  inputs.src-serializetools-master.flake = false;
  inputs.src-serializetools-master.type = "github";
  inputs.src-serializetools-master.owner = "JeffersonLab";
  inputs.src-serializetools-master.repo = "serializetools";
  inputs.src-serializetools-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-serializetools-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-serializetools-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-serializetools-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
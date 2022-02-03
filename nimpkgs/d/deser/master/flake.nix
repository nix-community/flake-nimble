{
  description = ''De/serialization library for Nim '';
  inputs.src-deser-master.flake = false;
  inputs.src-deser-master.type = "github";
  inputs.src-deser-master.owner = "gabbhack";
  inputs.src-deser-master.repo = "deser";
  inputs.src-deser-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-deser-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-deser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-deser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
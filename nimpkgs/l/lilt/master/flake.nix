{
  description = ''Parsing language'';
  inputs.src-lilt-master.flake = false;
  inputs.src-lilt-master.type = "github";
  inputs.src-lilt-master.owner = "quelklef";
  inputs.src-lilt-master.repo = "lilt";
  inputs.src-lilt-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-lilt-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lilt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lilt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
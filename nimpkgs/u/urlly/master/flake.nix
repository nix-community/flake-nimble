{
  description = ''URL and URI parsing for C and JS backend.'';
  inputs.src-urlly-master.flake = false;
  inputs.src-urlly-master.type = "github";
  inputs.src-urlly-master.owner = "treeform";
  inputs.src-urlly-master.repo = "urlly";
  inputs.src-urlly-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-urlly-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-urlly-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-urlly-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
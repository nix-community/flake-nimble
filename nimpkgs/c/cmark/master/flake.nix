{
  description = ''libcmark wrapper for Nim'';
  inputs.src-cmark-master.flake = false;
  inputs.src-cmark-master.type = "github";
  inputs.src-cmark-master.owner = "zengxs";
  inputs.src-cmark-master.repo = "nim-cmark";
  inputs.src-cmark-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-cmark-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cmark-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cmark-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
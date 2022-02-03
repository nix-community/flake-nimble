{
  description = ''everything  search engine wrapper'';
  inputs.src-nimeverything-master.flake = false;
  inputs.src-nimeverything-master.type = "github";
  inputs.src-nimeverything-master.owner = "xland";
  inputs.src-nimeverything-master.repo = "nimeverything";
  inputs.src-nimeverything-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimeverything-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimeverything-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimeverything-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
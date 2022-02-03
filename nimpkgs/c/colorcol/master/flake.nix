{
  description = ''Kakoune plugin for color preview'';
  inputs.src-colorcol-master.flake = false;
  inputs.src-colorcol-master.type = "github";
  inputs.src-colorcol-master.owner = "SolitudeSF";
  inputs.src-colorcol-master.repo = "colorcol";
  inputs.src-colorcol-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-colorcol-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-colorcol-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-colorcol-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
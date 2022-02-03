{
  description = ''Gif Encoder'';
  inputs.src-gifenc-master.flake = false;
  inputs.src-gifenc-master.type = "github";
  inputs.src-gifenc-master.owner = "ftsf";
  inputs.src-gifenc-master.repo = "gifenc";
  inputs.src-gifenc-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-gifenc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gifenc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gifenc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Integrate nim projects in the C++Builder build process'';
  inputs.src-nimcb-master.flake = false;
  inputs.src-nimcb-master.type = "github";
  inputs.src-nimcb-master.owner = "AdrianV";
  inputs.src-nimcb-master.repo = "nimcb";
  inputs.src-nimcb-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimcb-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimcb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
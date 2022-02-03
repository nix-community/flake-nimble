{
  description = ''Sorted Tables for Nim, based on B-Trees'';
  inputs.src-sorta-master.flake = false;
  inputs.src-sorta-master.type = "github";
  inputs.src-sorta-master.owner = "narimiran";
  inputs.src-sorta-master.repo = "sorta";
  inputs.src-sorta-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sorta-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sorta-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sorta-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
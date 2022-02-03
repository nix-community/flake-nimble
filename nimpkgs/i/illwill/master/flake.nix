{
  description = ''A curses inspired simple cross-platform console library for Nim'';
  inputs.src-illwill-master.flake = false;
  inputs.src-illwill-master.type = "github";
  inputs.src-illwill-master.owner = "johnnovak";
  inputs.src-illwill-master.repo = "illwill";
  inputs.src-illwill-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-illwill-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-illwill-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-illwill-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
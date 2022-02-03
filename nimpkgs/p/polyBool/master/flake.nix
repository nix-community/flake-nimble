{
  description = ''Polygon Clipper Library (Martinez Algorithm)'';
  inputs.src-polyBool-master.flake = false;
  inputs.src-polyBool-master.type = "github";
  inputs.src-polyBool-master.owner = "jangko";
  inputs.src-polyBool-master.repo = "polyBool";
  inputs.src-polyBool-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-polyBool-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-polyBool-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-polyBool-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
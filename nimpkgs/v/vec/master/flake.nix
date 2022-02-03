{
  description = ''A very simple vector library'';
  inputs.src-vec-master.flake = false;
  inputs.src-vec-master.type = "github";
  inputs.src-vec-master.owner = "dom96";
  inputs.src-vec-master.repo = "vec";
  inputs.src-vec-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-vec-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vec-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vec-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
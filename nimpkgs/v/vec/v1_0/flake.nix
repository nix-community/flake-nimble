{
  description = ''A very simple vector library'';
  inputs.src-vec-v1_0.flake = false;
  inputs.src-vec-v1_0.type = "github";
  inputs.src-vec-v1_0.owner = "dom96";
  inputs.src-vec-v1_0.repo = "vec";
  inputs.src-vec-v1_0.ref = "refs/tags/v1.0";
  
  outputs = { self, nixpkgs, src-vec-v1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vec-v1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vec-v1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
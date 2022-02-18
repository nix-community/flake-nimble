{
  description = ''A very simple vector library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-vec-master.flake = false;
  inputs.src-vec-master.type = "github";
  inputs.src-vec-master.owner = "dom96";
  inputs.src-vec-master.repo = "vec";
  inputs.src-vec-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-vec-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vec-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-vec-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
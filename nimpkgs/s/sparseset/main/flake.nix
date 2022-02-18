{
  description = ''Sparsets for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sparseset-main.flake = false;
  inputs.src-sparseset-main.type = "github";
  inputs.src-sparseset-main.owner = "planetis-m";
  inputs.src-sparseset-main.repo = "sparseset";
  inputs.src-sparseset-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sparseset-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sparseset-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sparseset-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
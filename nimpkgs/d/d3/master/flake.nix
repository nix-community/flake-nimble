{
  description = ''A D3.js wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-d3-master.flake = false;
  inputs.src-d3-master.type = "github";
  inputs.src-d3-master.owner = "hiteshjasani";
  inputs.src-d3-master.repo = "nim-d3";
  inputs.src-d3-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-d3-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-d3-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-d3-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
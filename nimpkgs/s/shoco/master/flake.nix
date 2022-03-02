{
  description = ''A fast compressor for short strings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-shoco-master.flake = false;
  inputs.src-shoco-master.type = "github";
  inputs.src-shoco-master.owner = "onionhammer";
  inputs.src-shoco-master.repo = "shoconim";
  inputs.src-shoco-master.ref = "refs/heads/master";
  inputs.src-shoco-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-shoco-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shoco-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-shoco-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
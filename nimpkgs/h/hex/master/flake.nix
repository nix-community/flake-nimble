{
  description = ''A simple hex package for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-hex-master.flake = false;
  inputs.src-hex-master.type = "github";
  inputs.src-hex-master.owner = "esbullington";
  inputs.src-hex-master.repo = "nimrod-hex";
  inputs.src-hex-master.ref = "refs/heads/master";
  inputs.src-hex-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hex-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hex-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hex-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
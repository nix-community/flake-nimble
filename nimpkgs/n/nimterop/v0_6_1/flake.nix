{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimterop-v0_6_1.flake = false;
  inputs.src-nimterop-v0_6_1.type = "github";
  inputs.src-nimterop-v0_6_1.owner = "genotrance";
  inputs.src-nimterop-v0_6_1.repo = "nimterop";
  inputs.src-nimterop-v0_6_1.ref = "refs/tags/v0.6.1";
  inputs.src-nimterop-v0_6_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimterop-v0_6_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-v0_6_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimterop-v0_6_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
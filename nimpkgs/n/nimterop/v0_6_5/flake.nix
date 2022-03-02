{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimterop-v0_6_5.flake = false;
  inputs.src-nimterop-v0_6_5.type = "github";
  inputs.src-nimterop-v0_6_5.owner = "genotrance";
  inputs.src-nimterop-v0_6_5.repo = "nimterop";
  inputs.src-nimterop-v0_6_5.ref = "refs/tags/v0.6.5";
  inputs.src-nimterop-v0_6_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimterop-v0_6_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-v0_6_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimterop-v0_6_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
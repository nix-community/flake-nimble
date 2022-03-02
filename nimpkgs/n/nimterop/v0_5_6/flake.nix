{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimterop-v0_5_6.flake = false;
  inputs.src-nimterop-v0_5_6.type = "github";
  inputs.src-nimterop-v0_5_6.owner = "genotrance";
  inputs.src-nimterop-v0_5_6.repo = "nimterop";
  inputs.src-nimterop-v0_5_6.ref = "refs/tags/v0.5.6";
  inputs.src-nimterop-v0_5_6.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimterop-v0_5_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-v0_5_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimterop-v0_5_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
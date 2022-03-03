{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimterop-v0_3_2.flake = false;
  inputs.src-nimterop-v0_3_2.type = "github";
  inputs.src-nimterop-v0_3_2.owner = "genotrance";
  inputs.src-nimterop-v0_3_2.repo = "nimterop";
  inputs.src-nimterop-v0_3_2.ref = "refs/tags/v0.3.2";
  inputs.src-nimterop-v0_3_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimterop-v0_3_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimterop-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimterop-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
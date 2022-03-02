{
  description = ''PNG(Portable Network Graphics) encoder and decoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimPNG-v0_2_5.flake = false;
  inputs.src-nimPNG-v0_2_5.type = "github";
  inputs.src-nimPNG-v0_2_5.owner = "jangko";
  inputs.src-nimPNG-v0_2_5.repo = "nimPNG";
  inputs.src-nimPNG-v0_2_5.ref = "refs/tags/v0.2.5";
  inputs.src-nimPNG-v0_2_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimPNG-v0_2_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimPNG-v0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimPNG-v0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
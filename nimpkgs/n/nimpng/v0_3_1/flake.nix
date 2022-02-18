{
  description = ''PNG(Portable Network Graphics) encoder and decoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimPNG-v0_3_1.flake = false;
  inputs.src-nimPNG-v0_3_1.type = "github";
  inputs.src-nimPNG-v0_3_1.owner = "jangko";
  inputs.src-nimPNG-v0_3_1.repo = "nimPNG";
  inputs.src-nimPNG-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimPNG-v0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimPNG-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimPNG-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
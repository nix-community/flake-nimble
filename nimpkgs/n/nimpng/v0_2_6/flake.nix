{
  description = ''PNG(Portable Network Graphics) encoder and decoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimpng-v0_2_6.flake = false;
  inputs.src-nimpng-v0_2_6.type = "github";
  inputs.src-nimpng-v0_2_6.owner = "jangko";
  inputs.src-nimpng-v0_2_6.repo = "nimPNG";
  inputs.src-nimpng-v0_2_6.ref = "refs/tags/v0.2.6";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimpng-v0_2_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpng-v0_2_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimpng-v0_2_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
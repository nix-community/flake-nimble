{
  description = ''PNG(Portable Network Graphics) encoder and decoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimpng-0_2_7.flake = false;
  inputs.src-nimpng-0_2_7.type = "github";
  inputs.src-nimpng-0_2_7.owner = "jangko";
  inputs.src-nimpng-0_2_7.repo = "nimPNG";
  inputs.src-nimpng-0_2_7.ref = "refs/tags/0.2.7";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimpng-0_2_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpng-0_2_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimpng-0_2_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Nim package to manipulate buffer as either seq[byte] or string'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-bytesequtils-v1_0_0.flake = false;
  inputs.src-bytesequtils-v1_0_0.type = "github";
  inputs.src-bytesequtils-v1_0_0.owner = "Clonkk";
  inputs.src-bytesequtils-v1_0_0.repo = "bytesequtils";
  inputs.src-bytesequtils-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bytesequtils-v1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bytesequtils-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bytesequtils-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Nim package to manipulate buffer as either seq[byte] or string'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-bytesequtils-main.flake = false;
  inputs.src-bytesequtils-main.type = "github";
  inputs.src-bytesequtils-main.owner = "Clonkk";
  inputs.src-bytesequtils-main.repo = "bytesequtils";
  inputs.src-bytesequtils-main.ref = "refs/heads/main";
  inputs.src-bytesequtils-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bytesequtils-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bytesequtils-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bytesequtils-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
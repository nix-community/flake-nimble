{
  description = ''Nim wrapper for distorm3 - Powerful Disassembler Library For x86/AMD64'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-distorm3-3_5_2.flake = false;
  inputs.src-distorm3-3_5_2.type = "github";
  inputs.src-distorm3-3_5_2.owner = "ba0f3";
  inputs.src-distorm3-3_5_2.repo = "distorm3.nim";
  inputs.src-distorm3-3_5_2.ref = "refs/tags/3.5.2";
  inputs.src-distorm3-3_5_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-distorm3-3_5_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-distorm3-3_5_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-distorm3-3_5_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
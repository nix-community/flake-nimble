{
  description = ''A pure nim version of C++'s std::bitset'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-bitset-main.flake = false;
  inputs.src-bitset-main.type = "github";
  inputs.src-bitset-main.owner = "joryschossau";
  inputs.src-bitset-main.repo = "bitset";
  inputs.src-bitset-main.ref = "refs/heads/main";
  inputs.src-bitset-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bitset-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitset-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bitset-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
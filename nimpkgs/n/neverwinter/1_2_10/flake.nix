{
  description = ''Neverwinter Nights 1 data accessor library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-neverwinter-1_2_10.flake = false;
  inputs.src-neverwinter-1_2_10.type = "github";
  inputs.src-neverwinter-1_2_10.owner = "niv";
  inputs.src-neverwinter-1_2_10.repo = "neverwinter.nim";
  inputs.src-neverwinter-1_2_10.ref = "refs/tags/1.2.10";
  inputs.src-neverwinter-1_2_10.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-neverwinter-1_2_10, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neverwinter-1_2_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-neverwinter-1_2_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
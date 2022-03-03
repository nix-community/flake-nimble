{
  description = ''Neverwinter Nights 1 data accessor library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-neverwinter-1_1_1.flake = false;
  inputs.src-neverwinter-1_1_1.type = "github";
  inputs.src-neverwinter-1_1_1.owner = "niv";
  inputs.src-neverwinter-1_1_1.repo = "neverwinter.nim";
  inputs.src-neverwinter-1_1_1.ref = "refs/tags/1.1.1";
  inputs.src-neverwinter-1_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-neverwinter-1_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neverwinter-1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-neverwinter-1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Neverwinter Nights 1 data accessor library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-neverwinter-1_2_9.flake = false;
  inputs.src-neverwinter-1_2_9.type = "github";
  inputs.src-neverwinter-1_2_9.owner = "niv";
  inputs.src-neverwinter-1_2_9.repo = "neverwinter.nim";
  inputs.src-neverwinter-1_2_9.ref = "refs/tags/1.2.9";
  inputs.src-neverwinter-1_2_9.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-neverwinter-1_2_9, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neverwinter-1_2_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-neverwinter-1_2_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
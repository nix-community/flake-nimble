{
  description = ''Neverwinter Nights 1 data accessor library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-neverwinter-1_5_2.flake = false;
  inputs.src-neverwinter-1_5_2.type = "github";
  inputs.src-neverwinter-1_5_2.owner = "niv";
  inputs.src-neverwinter-1_5_2.repo = "neverwinter.nim";
  inputs.src-neverwinter-1_5_2.ref = "refs/tags/1.5.2";
  inputs.src-neverwinter-1_5_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-neverwinter-1_5_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neverwinter-1_5_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-neverwinter-1_5_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
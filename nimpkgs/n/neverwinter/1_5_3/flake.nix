{
  description = ''Neverwinter Nights 1 data accessor library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-neverwinter-1_5_3.flake = false;
  inputs.src-neverwinter-1_5_3.type = "github";
  inputs.src-neverwinter-1_5_3.owner = "niv";
  inputs.src-neverwinter-1_5_3.repo = "neverwinter.nim";
  inputs.src-neverwinter-1_5_3.ref = "refs/tags/1.5.3";
  inputs.src-neverwinter-1_5_3.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."docopt".type = "github";
  # inputs."docopt".owner = "riinr";
  # inputs."docopt".repo = "flake-nimble";
  # inputs."docopt".ref = "flake-pinning";
  # inputs."docopt".dir = "nimpkgs/d/docopt";
  # inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-neverwinter-1_5_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neverwinter-1_5_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-neverwinter-1_5_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''A build tool for Neverwinter Nights projects'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nasher-0_11_6.flake = false;
  inputs.src-nasher-0_11_6.type = "github";
  inputs.src-nasher-0_11_6.owner = "squattingmonk";
  inputs.src-nasher-0_11_6.repo = "nasher.nim";
  inputs.src-nasher-0_11_6.ref = "refs/tags/0.11.6";
  inputs.src-nasher-0_11_6.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."neverwinter".type = "github";
  # inputs."neverwinter".owner = "riinr";
  # inputs."neverwinter".repo = "flake-nimble";
  # inputs."neverwinter".ref = "flake-pinning";
  # inputs."neverwinter".dir = "nimpkgs/n/neverwinter";
  # inputs."neverwinter".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."neverwinter".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."glob".type = "github";
  # inputs."glob".owner = "riinr";
  # inputs."glob".repo = "flake-nimble";
  # inputs."glob".ref = "flake-pinning";
  # inputs."glob".dir = "nimpkgs/g/glob";
  # inputs."glob".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."glob".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nasher-0_11_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nasher-0_11_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nasher-0_11_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
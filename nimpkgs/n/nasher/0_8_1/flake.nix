{
  description = ''A build tool for Neverwinter Nights projects'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nasher-0_8_1.flake = false;
  inputs.src-nasher-0_8_1.type = "github";
  inputs.src-nasher-0_8_1.owner = "squattingmonk";
  inputs.src-nasher-0_8_1.repo = "nasher.nim";
  inputs.src-nasher-0_8_1.ref = "refs/tags/0.8.1";
  
  
  inputs."neverwinter".type = "github";
  inputs."neverwinter".owner = "riinr";
  inputs."neverwinter".repo = "flake-nimble";
  inputs."neverwinter".ref = "flake-pinning";
  inputs."neverwinter".dir = "nimpkgs/n/neverwinter";

  
  inputs."glob".type = "github";
  inputs."glob".owner = "riinr";
  inputs."glob".repo = "flake-nimble";
  inputs."glob".ref = "flake-pinning";
  inputs."glob".dir = "nimpkgs/g/glob";

  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nasher-0_8_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nasher-0_8_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nasher-0_8_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
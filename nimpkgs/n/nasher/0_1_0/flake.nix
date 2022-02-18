{
  description = ''A build tool for Neverwinter Nights projects'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nasher-0_1_0.flake = false;
  inputs.src-nasher-0_1_0.type = "github";
  inputs.src-nasher-0_1_0.owner = "squattingmonk";
  inputs.src-nasher-0_1_0.repo = "nasher.nim";
  inputs.src-nasher-0_1_0.ref = "refs/tags/0.1.0";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-nasher-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nasher-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nasher-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''A build tool for Neverwinter Nights projects'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nasher-0_14_1.flake = false;
  inputs.src-nasher-0_14_1.type = "github";
  inputs.src-nasher-0_14_1.owner = "squattingmonk";
  inputs.src-nasher-0_14_1.repo = "nasher.nim";
  inputs.src-nasher-0_14_1.ref = "refs/tags/0.14.1";
  
  
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

  
  inputs."nwnt".type = "github";
  inputs."nwnt".owner = "riinr";
  inputs."nwnt".repo = "flake-nimble";
  inputs."nwnt".ref = "flake-pinning";
  inputs."nwnt".dir = "nimpkgs/n/nwnt";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nasher-0_14_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nasher-0_14_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nasher-0_14_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
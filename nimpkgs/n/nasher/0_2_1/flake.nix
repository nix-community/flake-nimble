{
  description = ''A build tool for Neverwinter Nights projects'';
  inputs.src-nasher-0_2_1.flake = false;
  inputs.src-nasher-0_2_1.type = "github";
  inputs.src-nasher-0_2_1.owner = "squattingmonk";
  inputs.src-nasher-0_2_1.repo = "nasher.nim";
  inputs.src-nasher-0_2_1.ref = "refs/tags/0.2.1";
  
  
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

  outputs = { self, nixpkgs, src-nasher-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nasher-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nasher-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
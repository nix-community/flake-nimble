{
  description = ''A build tool for Neverwinter Nights projects'';
  inputs.src-nasher-0_14_0.flake = false;
  inputs.src-nasher-0_14_0.type = "github";
  inputs.src-nasher-0_14_0.owner = "squattingmonk";
  inputs.src-nasher-0_14_0.repo = "nasher.nim";
  inputs.src-nasher-0_14_0.ref = "refs/tags/0.14.0";
  
  
  inputs."neverwinter".url = "path:../../../n/neverwinter";
  inputs."neverwinter".type = "github";
  inputs."neverwinter".owner = "riinr";
  inputs."neverwinter".repo = "flake-nimble";
  inputs."neverwinter".ref = "flake-pinning";
  inputs."neverwinter".dir = "nimpkgs/n/neverwinter";

  
  inputs."glob".url = "path:../../../g/glob";
  inputs."glob".type = "github";
  inputs."glob".owner = "riinr";
  inputs."glob".repo = "flake-nimble";
  inputs."glob".ref = "flake-pinning";
  inputs."glob".dir = "nimpkgs/g/glob";

  
  inputs."nwnt".url = "path:../../../n/nwnt";
  inputs."nwnt".type = "github";
  inputs."nwnt".owner = "riinr";
  inputs."nwnt".repo = "flake-nimble";
  inputs."nwnt".ref = "flake-pinning";
  inputs."nwnt".dir = "nimpkgs/n/nwnt";

  outputs = { self, nixpkgs, src-nasher-0_14_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nasher-0_14_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nasher-0_14_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}